.class public Lcn/nubia/server/breathinglight/MissEventObserver;
.super Ljava/lang/Object;
.source "MissEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/breathinglight/MissEventObserver$WhiteAppAsyncQueryTask;,
        Lcn/nubia/server/breathinglight/MissEventObserver$InitAsyncTask;
    }
.end annotation


# static fields
.field private static final ACTION_NO_DISTURB_EVENING:Ljava/lang/String; = "cn.nubia.intent.action.breathinglight.event_no_disturb_evening"

.field private static final ACTION_NO_DISTURB_MORNING:Ljava/lang/String; = "cn.nubia.intent.action.breathinglight.event_no_disturb_morning"

.field private static final FLAG:Ljava/lang/String; = "FLAG"

.field private static final ID:Ljava/lang/String; = "_ID"

.field private static final LIGHT_SWITCH_FLAG:I = 0x8

.field private static final NOTIFICATION_CENTER_PROJECT:[Ljava/lang/String;

.field private static final NOTIFUCATION_CENTER_URI:Landroid/net/Uri;

.field private static final NOTIFY_SWITCH_FLAG:I = 0x1

.field private static final NO_DISTURB_EVENING_HOUR_OF_DAY:I = 0x16

.field private static final NO_DISTURB_EVENING_REQUESTCODE:I = 0x1

.field private static final NO_DISTURB_MORNING_HOUR_OF_DAY:I = 0x7

.field private static final NO_DISTURB_MORNING_REQUESTCODE:I = 0x0

.field private static final PKG_NAME:Ljava/lang/String; = "PKG_NAME"

.field private static final TAG:Ljava/lang/String; = "MissEventObserver"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mDataBaseObserver:Landroid/database/ContentObserver;

.field private mIsNoDisturb:Z

.field private mListener:Landroid/service/notification/INotificationListener$Stub;

.field private mNoDisturbReceiver:Landroid/content/BroadcastReceiver;

.field private mNotification:Landroid/app/INotificationManager;

.field private mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcn/nubia/server/breathinglight/BreathingLightService;

.field private mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

.field private mUsingMiddleLight:Z

.field private mWhiteAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const-string v0, "content://cn.nubia.providers.AppSettingsInfoProvider/appsettingsinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFUCATION_CENTER_URI:Landroid/net/Uri;

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PKG_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "FLAG"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFICATION_CENTER_PROJECT:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;Lcn/nubia/server/breathinglight/BreathingLightSettings;Landroid/app/INotificationManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/breathinglight/BreathingLightService;
    .param p3, "settings"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;
    .param p4, "notification"    # Landroid/app/INotificationManager;

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mWhiteAppList:Ljava/util/ArrayList;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    .line 61
    iput-boolean v3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsNoDisturb:Z

    .line 75
    new-instance v1, Lcn/nubia/server/breathinglight/MissEventObserver$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/breathinglight/MissEventObserver$1;-><init>(Lcn/nubia/server/breathinglight/MissEventObserver;)V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNoDisturbReceiver:Landroid/content/BroadcastReceiver;

    .line 289
    new-instance v1, Lcn/nubia/server/breathinglight/MissEventObserver$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/breathinglight/MissEventObserver$2;-><init>(Lcn/nubia/server/breathinglight/MissEventObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mDataBaseObserver:Landroid/database/ContentObserver;

    .line 338
    new-instance v1, Lcn/nubia/server/breathinglight/MissEventObserver$3;

    invoke-direct {v1, p0}, Lcn/nubia/server/breathinglight/MissEventObserver$3;-><init>(Lcn/nubia/server/breathinglight/MissEventObserver;)V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mListener:Landroid/service/notification/INotificationListener$Stub;

    .line 100
    iput-object p1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 102
    iput-object p3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .line 103
    iput-boolean v3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 105
    iput-object p4, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotification:Landroid/app/INotificationManager;

    .line 107
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotification:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mListener:Landroid/service/notification/INotificationListener$Stub;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/app/INotificationManager;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mAlarmManager:Landroid/app/AlarmManager;

    .line 116
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/server/breathinglight/MissEventObserver;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/MissEventObserver;

    .prologue
    .line 37
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->scheduleAlarm()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/breathinglight/MissEventObserver;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/MissEventObserver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/breathinglight/MissEventObserver;->scheduleAlarm(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/breathinglight/MissEventObserver;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/MissEventObserver;

    .prologue
    .line 37
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->getWhiteAppList()V

    return-void
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFUCATION_CENTER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/server/breathinglight/MissEventObserver;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/MissEventObserver;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/MissEventObserver;->handleNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/breathinglight/MissEventObserver;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/MissEventObserver;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/MissEventObserver;->handleNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method private cancelAlarm(Ljava/lang/String;I)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, p2, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 187
    return-void
.end method

.method private cancelNoDisturb()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNoDisturbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    const-string v0, "cn.nubia.intent.action.breathinglight.event_no_disturb_morning"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/breathinglight/MissEventObserver;->cancelAlarm(Ljava/lang/String;I)V

    .line 162
    const-string v0, "cn.nubia.intent.action.breathinglight.event_no_disturb_evening"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/breathinglight/MissEventObserver;->cancelAlarm(Ljava/lang/String;I)V

    .line 163
    return-void
.end method

.method private getWhiteAppList()V
    .locals 10

    .prologue
    .line 190
    const/4 v7, 0x0

    .line 191
    .local v7, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mWhiteAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 200
    :try_start_0
    sget-object v1, Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFUCATION_CENTER_URI:Landroid/net/Uri;

    sget-object v2, Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFICATION_CENTER_PROJECT:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 202
    if-eqz v7, :cond_3

    .line 203
    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    const-string v1, "FLAG"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 205
    .local v9, "flag":I
    const-string v1, "PKG_NAME"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, "appName":Ljava/lang/String;
    and-int/lit8 v1, v9, 0x8

    if-eqz v1, :cond_2

    and-int/lit8 v1, v9, 0x1

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mWhiteAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 213
    .end local v6    # "appName":Ljava/lang/String;
    .end local v9    # "flag":I
    :catch_0
    move-exception v8

    .line 214
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "MissEventObserver"

    const-string v2, "Query SQLite Exception!"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    if-eqz v7, :cond_0

    .line 217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 216
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    if-eqz v7, :cond_0

    .line 217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    .line 217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method private handleNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 316
    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    .line 319
    .local v0, "id":I
    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mWhiteAppList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/MissEventObserver;->isNotificationPermanent(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->requestBreathingLight()V

    .line 326
    .end local v0    # "id":I
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 329
    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    .line 332
    .local v0, "id":I
    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mWhiteAppList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 336
    .end local v0    # "id":I
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private isNoDisturb()Z
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 263
    iget-object v4, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v4}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isNoDisturbEnable()Z

    move-result v0

    .line 264
    .local v0, "isNoDisturbEnable":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x7

    if-lt v4, v5, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x16

    if-lt v4, v5, :cond_1

    :cond_0
    move v1, v2

    .line 268
    .local v1, "isNoDisturbTime":Z
    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :goto_1
    return v2

    .end local v1    # "isNoDisturbTime":Z
    :cond_1
    move v1, v3

    .line 264
    goto :goto_0

    .restart local v1    # "isNoDisturbTime":Z
    :cond_2
    move v2, v3

    .line 268
    goto :goto_1
.end method

.method private isNotificationPermanent(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4
    .param p1, "sn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 301
    const/4 v2, 0x0

    .line 302
    .local v2, "result":Z
    if-eqz p1, :cond_1

    .line 303
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 304
    .local v1, "n":Landroid/app/Notification;
    if-eqz v1, :cond_1

    .line 305
    iget v0, v1, Landroid/app/Notification;->flags:I

    .line 306
    .local v0, "flags":I
    and-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_0

    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_1

    .line 308
    :cond_0
    const/4 v2, 0x1

    .line 312
    .end local v0    # "flags":I
    .end local v1    # "n":Landroid/app/Notification;
    :cond_1
    return v2
.end method

.method private registerNoDisturbReceiver()V
    .locals 3

    .prologue
    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v1, "cn.nubia.intent.action.breathinglight.event_no_disturb_morning"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "cn.nubia.intent.action.breathinglight.event_no_disturb_evening"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNoDisturbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    return-void
.end method

.method private scheduleAlarm()V
    .locals 3

    .prologue
    .line 153
    const-string v0, "cn.nubia.intent.action.breathinglight.event_no_disturb_morning"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/server/breathinglight/MissEventObserver;->scheduleAlarm(Ljava/lang/String;II)V

    .line 155
    const-string v0, "cn.nubia.intent.action.breathinglight.event_no_disturb_evening"

    const/4 v1, 0x1

    const/16 v2, 0x16

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/server/breathinglight/MissEventObserver;->scheduleAlarm(Ljava/lang/String;II)V

    .line 157
    return-void
.end method

.method private scheduleAlarm(Ljava/lang/String;II)V
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "hourOfDay"    # I

    .prologue
    const/16 v4, 0xb

    const/4 v6, 0x0

    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 167
    .local v0, "c":Ljava/util/Calendar;
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 168
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 169
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 170
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 171
    .local v1, "curHourOfDay":I
    invoke-virtual {v0, v4, p3}, Ljava/util/Calendar;->set(II)V

    .line 172
    if-lt v1, p3, :cond_0

    .line 173
    const/16 v3, 0x18

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 176
    :cond_0
    iget-object v3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, p2, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 179
    .local v2, "sender":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 180
    iget-object v3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 181
    return-void
.end method

.method private scheduleNoDisturb()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->registerNoDisturbReceiver()V

    .line 140
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->scheduleAlarm()V

    .line 141
    return-void
.end method


# virtual methods
.method public closeBreathingLight()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isNotificationEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->isNoDisturb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 251
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    .line 253
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->checkBatteryState()V

    .line 260
    :goto_0
    return-void

    .line 255
    :cond_0
    const-string v0, "MissEventObserver"

    const-string v1, "closeBreathingLight: mNotificationList is empty!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    :cond_1
    const-string v0, "MissEventObserver"

    const-string v1, "closeBreathingLight: notification is disable!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleBootCompleted()V
    .locals 5

    .prologue
    .line 119
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFUCATION_CENTER_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mDataBaseObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 123
    new-instance v0, Lcn/nubia/server/breathinglight/MissEventObserver$InitAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/breathinglight/MissEventObserver$InitAsyncTask;-><init>(Lcn/nubia/server/breathinglight/MissEventObserver;Lcn/nubia/server/breathinglight/MissEventObserver$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/MissEventObserver$InitAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 125
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->setNoDisturb()V

    .line 126
    return-void
.end method

.method public handleUserPresent()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 225
    return-void
.end method

.method public isUseingMiddleLight()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    return v0
.end method

.method public requestBreathingLight()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isNotificationEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->isNoDisturb()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 236
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    .line 246
    :goto_0
    return-void

    .line 238
    :cond_0
    iput-boolean v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 239
    const-string v0, "MissEventObserver"

    const-string v1, "requestBreathingLight: mNotificationList is empty!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    :cond_1
    iput-boolean v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 244
    const-string v0, "MissEventObserver"

    const-string v1, "requestBreathingLight: notification is disable!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setNoDisturb()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isNoDisturbEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsNoDisturb:Z

    if-nez v0, :cond_1

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsNoDisturb:Z

    .line 131
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->scheduleNoDisturb()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsNoDisturb:Z

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mIsNoDisturb:Z

    .line 134
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->cancelNoDisturb()V

    goto :goto_0
.end method
