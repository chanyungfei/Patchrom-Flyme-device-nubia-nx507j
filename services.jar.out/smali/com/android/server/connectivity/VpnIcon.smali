.class Lcom/android/server/connectivity/VpnIcon;
.super Ljava/lang/Object;
.source "VpnIcon.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackage:Ljava/lang/String;

.field private final mUserHandle:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    .line 31
    iput p2, p0, Lcom/android/server/connectivity/VpnIcon;->mUserHandle:I

    .line 32
    iput-object p3, p0, Lcom/android/server/connectivity/VpnIcon;->mPackage:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private createBitmap(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v7, 0x0

    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 118
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-lez v5, :cond_0

    .line 119
    iget-object v5, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 121
    .local v4, "width":I
    iget-object v5, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 123
    .local v2, "height":I
    invoke-virtual {v3, v7, v7, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 124
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 126
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v2    # "height":I
    .end local v4    # "width":I
    :cond_0
    return-object v0
.end method

.method private hideNotification(I)V
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 109
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 110
    const/4 v1, 0x0

    const v2, 0x108075c

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 112
    :cond_0
    return-void
.end method

.method private showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/internal/net/VpnConfig;Landroid/app/PendingIntent;)V
    .locals 10
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "userHandle"    # I
    .param p4, "vpnConfig"    # Lcom/android/internal/net/VpnConfig;
    .param p5, "statusIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 74
    iget-object v4, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 77
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 78
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    const v5, 0x1040565

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "title":Ljava/lang/String;
    :goto_0
    iget-object v4, p4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    const v5, 0x1040567

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "text":Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x108075e

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "Running"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "90"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 101
    .local v1, "notification":Landroid/app/Notification;
    const/4 v4, 0x0

    const v5, 0x108075c

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 103
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    return-void

    .line 78
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    const v5, 0x1040566

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 80
    .restart local v3    # "title":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    const v5, 0x1040568

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method hideNotificationForAll()V
    .locals 6

    .prologue
    .line 58
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 59
    .local v2, "token":J
    iget v5, p0, Lcom/android/server/connectivity/VpnIcon;->mUserHandle:I

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/VpnIcon;->hideNotification(I)V

    .line 62
    :try_start_0
    iget v5, p0, Lcom/android/server/connectivity/VpnIcon;->mUserHandle:I

    if-nez v5, :cond_0

    .line 63
    iget-object v5, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 64
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 65
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/VpnIcon;->hideNotification(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 69
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    return-void
.end method

.method showNotificationAccordingToPackage(ILcom/android/internal/net/VpnConfig;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "userHandle"    # I
    .param p2, "vpnConfig"    # Lcom/android/internal/net/VpnConfig;
    .param p3, "statusIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v4, 0x0

    .line 36
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIcon;->mPackage:Ljava/lang/String;

    const-string v3, "android.net.VpnService"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/VpnIcon;->mPackage:Ljava/lang/String;

    const-string v3, "com.android.vpndialogs"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 41
    .local v11, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/connectivity/VpnIcon;->mPackage:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/connectivity/VpnIcon;->mUserHandle:I

    invoke-interface {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 44
    .local v9, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v9, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "label":Ljava/lang/String;
    invoke-direct {p0, v9, v11}, Lcom/android/server/connectivity/VpnIcon;->createBitmap(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 48
    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/VpnIcon;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/internal/net/VpnConfig;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-void

    .line 49
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v10

    .line 50
    .local v10, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid application"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    .end local v10    # "e":Landroid/os/RemoteException;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIcon;->mPackage:Ljava/lang/String;

    const-string v3, "[Legacy VPN]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v3, p0

    move-object v5, v4

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    .line 53
    invoke-direct/range {v3 .. v8}, Lcom/android/server/connectivity/VpnIcon;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/internal/net/VpnConfig;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
