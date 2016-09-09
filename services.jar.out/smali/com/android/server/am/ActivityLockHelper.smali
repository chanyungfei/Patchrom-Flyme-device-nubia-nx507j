.class final Lcom/android/server/am/ActivityLockHelper;
.super Ljava/lang/Object;
.source "ActivityLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityLockHelper$AppLockedObserver;,
        Lcom/android/server/am/ActivityLockHelper$AppSwitchObserver;,
        Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;,
        Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    }
.end annotation


# static fields
.field private static final APPLOCKMAMAGER_PACKAGE:Ljava/lang/String; = "cn.nubia.applockmanager"

.field private static final APPLOCKMANAGER_COLUMN:Ljava/lang/String; = "packagename"

.field private static final APPLOCKMANAGER_URI:Ljava/lang/String; = "content://cn.nubia.applockmanager/locked_app_packages"

.field private static final APPLOCKSWITCH_COLUMN:Ljava/lang/String; = "value"

.field private static final APPLOCKSWITCH_URI:Ljava/lang/String; = "content://cn.nubia.applockmanager/locked_app_manager/applock_switch"

.field private static final APPLOCK_PASSWORD_ACTION:Ljava/lang/String; = "cn.nubia.applockmanager.nubia_application_applock"

.field private static final APPLOCK_PASSWORD_CLASS_NAME:Ljava/lang/String; = "cn.nubia.applockmanager.AppLockActivity"

.field private static final APPLOCK_PASSWORD_NAME_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final APPLOCK_SWITCH_OFF:Ljava/lang/String; = "off"

.field private static final APPLOCK_SWITCH_ON:Ljava/lang/String; = "on"

.field private static final LOCKED_FILE:Ljava/lang/String; = "locked_app.list"

.field private static final LOCKED_PKG_NAME:Ljava/lang/String; = "nubia_locked_package_name"

.field private static final PASSWORD_START_ID:Ljava/lang/String; = "nubia_locked_start_id"

.field private static final RESTART_EXTRA:Ljava/lang/String; = "nubia_locked_restartIntent"

.field private static final RESTART_STARTINFO_ID:Ljava/lang/String; = "nubia_locked_startinfo_id"

.field static final RESULT_NONE:I = 0x0

.field static final RESULT_PASS_FINISH:I = 0x3

.field static final RESULT_START_PASS:I = 0x1

.field static final RESULT_TASK_TO_BACK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActivityLockHelper"

.field private static mRid:I


# instance fields
.field private _screenReceiver:Landroid/content/BroadcastReceiver;

.field private mCallFromMoveToTaskFront:Z

.field private mContext:Landroid/content/Context;

.field private mLockedApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLockedOn:Z

.field private mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPermitUid:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRecords:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/ActivityLockHelper$VerifyRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemFile:Ljava/io/File;

.field private mTempRecord:Lcom/android/server/am/ActivityLockHelper$VerifyRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityLockHelper;->APPLOCK_PASSWORD_NAME_LIST:Ljava/util/ArrayList;

    .line 68
    sget-object v0, Lcom/android/server/am/ActivityLockHelper;->APPLOCK_PASSWORD_NAME_LIST:Ljava/util/ArrayList;

    const-string v1, "cn.nubia.applockmanager.AppLockActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/ActivityLockHelper;->mRid:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mSystemFile:Ljava/io/File;

    .line 72
    iput-boolean v3, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedOn:Z

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedApps:Ljava/util/HashSet;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mPermitUid:Ljava/util/HashSet;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mTempRecord:Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    .line 84
    iput-boolean v3, p0, Lcom/android/server/am/ActivityLockHelper;->mCallFromMoveToTaskFront:Z

    .line 114
    new-instance v0, Lcom/android/server/am/ActivityLockHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityLockHelper$1;-><init>(Lcom/android/server/am/ActivityLockHelper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->_screenReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iput-object p1, p0, Lcom/android/server/am/ActivityLockHelper;->mContext:Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->initLockedApps()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityLockHelper;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityLockHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedApps:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityLockHelper;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityLockHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityLockHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityLockHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityLockHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityLockHelper;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->updateAppSwitch()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityLockHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityLockHelper;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->updateAppList()V

    return-void
.end method

.method private addPermitApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 139
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 140
    .local v0, "uid":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mPermitUid:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0    # "uid":I
    :cond_0
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getVerifyRecord(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 339
    const/4 v2, 0x0

    .line 340
    .local v2, "record":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 341
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/ActivityLockHelper$VerifyRecord;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mAttachActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, v3, :cond_0

    .line 342
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "record":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    check-cast v2, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    .restart local v2    # "record":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    goto :goto_0

    .line 344
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/ActivityLockHelper$VerifyRecord;>;"
    :cond_1
    return-object v2
.end method

.method private initLockedApps()V
    .locals 4

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->readDataFromFile()V

    .line 105
    iget-object v2, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedApps:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 108
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private isLockedPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedApps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUidPermited(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mPermitUid:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 148
    .local v0, "permission":Z
    sget-boolean v1, Lcom/android/server/am/AppLockerConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 149
    const-string v1, "AppLocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " call permited:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    return v0
.end method

.method private isUnlockAppActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 385
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "activityName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 387
    .local v2, "result":Z
    sget-object v4, Lcom/android/server/am/ActivityLockHelper;->APPLOCK_PASSWORD_NAME_LIST:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 388
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 389
    const/4 v2, 0x1

    .line 393
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private makeId()I
    .locals 1

    .prologue
    .line 348
    sget v0, Lcom/android/server/am/ActivityLockHelper;->mRid:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/am/ActivityLockHelper;->mRid:I

    return v0
.end method

.method private readDataFromFile()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 591
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/am/ActivityLockHelper;->mSystemFile:Ljava/io/File;

    const-string v7, "locked_app.list"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 592
    .local v2, "readFile":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .local v1, "fileReader":Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 593
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 592
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 594
    const/4 v4, 0x0

    .line 595
    .local v4, "tempString":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 596
    const-string v9, "on"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedOn:Z

    .line 597
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 598
    iget-object v9, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedApps:Ljava/util/HashSet;

    invoke-virtual {v9, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    .line 592
    :catch_0
    move-exception v6

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 600
    :catchall_0
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_1
    if-eqz v3, :cond_0

    if-eqz v7, :cond_6

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_0
    :goto_2
    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 592
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "tempString":Ljava/lang/String;
    :catch_1
    move-exception v6

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 600
    :catchall_1
    move-exception v7

    move-object v8, v6

    move-object v6, v7

    :goto_3
    if-eqz v1, :cond_1

    if-eqz v8, :cond_8

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_1
    :goto_4
    :try_start_8
    throw v6
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .end local v1    # "fileReader":Ljava/io/FileReader;
    :catch_2
    move-exception v0

    .line 601
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "AppLocker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed read applocker data from file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_5
    return-void

    .line 600
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "tempString":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v8, :cond_5

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_4
    :goto_6
    if-eqz v1, :cond_2

    if-eqz v8, :cond_7

    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_5

    :catch_3
    move-exception v5

    .local v5, "x2":Ljava/lang/Throwable;
    :try_start_b
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_5

    .end local v5    # "x2":Ljava/lang/Throwable;
    :catch_4
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    :try_start_c
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "tempString":Ljava/lang/String;
    .end local v5    # "x2":Ljava/lang/Throwable;
    :catchall_2
    move-exception v6

    goto :goto_3

    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "tempString":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_6

    :catch_5
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_2

    :cond_7
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_5

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "tempString":Ljava/lang/String;
    :catch_6
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v8, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_4

    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "tempString":Ljava/lang/String;
    :catchall_3
    move-exception v6

    move-object v7, v8

    goto :goto_1
.end method

.method private registerObserver()V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Lcom/android/server/am/ActivityLockHelper$AppLockedObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/ActivityLockHelper$AppLockedObserver;-><init>(Lcom/android/server/am/ActivityLockHelper;Landroid/os/Handler;)V

    .line 163
    .local v0, "appLockedObserver":Lcom/android/server/am/ActivityLockHelper$AppLockedObserver;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityLockHelper$AppLockedObserver;->observe()V

    .line 164
    new-instance v1, Lcom/android/server/am/ActivityLockHelper$AppSwitchObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ActivityLockHelper$AppSwitchObserver;-><init>(Lcom/android/server/am/ActivityLockHelper;Landroid/os/Handler;)V

    .line 166
    .local v1, "appSwitchObserver":Lcom/android/server/am/ActivityLockHelper$AppSwitchObserver;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityLockHelper$AppSwitchObserver;->observe()V

    .line 167
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 156
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ActivityLockHelper;->_screenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    return-void
.end method

.method private updateAppList()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 534
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 535
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "content://cn.nubia.applockmanager/locked_app_packages"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 537
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 547
    if-eqz v6, :cond_0

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 547
    :catch_0
    move-exception v9

    .local v9, "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 539
    :cond_2
    :try_start_1
    const-string v1, "packagename"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 540
    .local v7, "packageIndex":I
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 541
    .local v8, "tempLockedApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, -0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 542
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 543
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 535
    .end local v7    # "packageIndex":I
    .end local v8    # "tempLockedApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 547
    :catchall_0
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_2
    if-eqz v6, :cond_3

    if-eqz v2, :cond_7

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    throw v1

    .line 545
    .restart local v7    # "packageIndex":I
    .restart local v8    # "tempLockedApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    :try_start_4
    iput-object v8, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedApps:Ljava/util/HashSet;

    .line 546
    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->updateAppStatus()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 547
    if-eqz v6, :cond_5

    if-eqz v2, :cond_6

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 548
    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->writeDataToFile()V

    goto :goto_0

    .line 547
    :catch_2
    move-exception v9

    .restart local v9    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .end local v7    # "packageIndex":I
    .end local v8    # "tempLockedApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_3
    move-exception v9

    .restart local v9    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v9    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2
.end method

.method private updateAppStatus()V
    .locals 7

    .prologue
    .line 552
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v4, "tempRemoveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedApps:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 554
    .local v0, "app":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 555
    iget-object v5, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 558
    .end local v0    # "app":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 559
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedApps:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 560
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 563
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 564
    .local v3, "remove":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 566
    .end local v3    # "remove":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private updateAppSwitch()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 518
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 519
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "content://cn.nubia.applockmanager/locked_app_manager/applock_switch"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 521
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 529
    if-eqz v6, :cond_0

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v8

    .local v8, "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 523
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_4

    .line 529
    if-eqz v6, :cond_0

    if-eqz v2, :cond_3

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v8

    .restart local v8    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 526
    :cond_4
    :try_start_3
    const-string v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 528
    .local v7, "value":Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedOn:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 529
    if-eqz v6, :cond_5

    if-eqz v2, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 530
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->writeDataToFile()V

    goto :goto_0

    .line 529
    :catch_2
    move-exception v8

    .restart local v8    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 519
    .end local v7    # "value":Ljava/lang/String;
    :catch_3
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 529
    :catchall_0
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_2
    if-eqz v6, :cond_7

    if-eqz v2, :cond_8

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :cond_7
    :goto_3
    throw v1

    :catch_4
    move-exception v8

    .restart local v8    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2
.end method

.method private writeDataToFile()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 569
    new-instance v6, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/am/ActivityLockHelper;->mSystemFile:Ljava/io/File;

    const-string v9, "locked_app.list"

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 570
    .local v6, "writeTarget":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .local v1, "fstr":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 571
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 570
    .local v5, "str":Ljava/io/BufferedOutputStream;
    const/4 v11, 0x0

    .line 572
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 574
    iget-boolean v8, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedOn:Z

    if-eqz v8, :cond_3

    const-string v8, "on"

    :goto_0
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 577
    iget-object v8, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedApps:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 578
    .local v3, "pkg":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 579
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    .line 570
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 584
    :catchall_0
    move-exception v9

    move-object v12, v9

    move-object v9, v8

    move-object v8, v12

    :goto_2
    if-eqz v5, :cond_0

    if-eqz v9, :cond_7

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_0
    :goto_3
    :try_start_5
    throw v8
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 570
    .end local v5    # "str":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v8

    :try_start_6
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 584
    :catchall_1
    move-exception v9

    move-object v10, v8

    move-object v8, v9

    :goto_4
    if-eqz v1, :cond_1

    if-eqz v10, :cond_9

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_1
    :goto_5
    :try_start_8
    throw v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 585
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "AppLocker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed write applocker data to file:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_6
    return-void

    .line 574
    .restart local v1    # "fstr":Ljava/io/FileOutputStream;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "str":Ljava/io/BufferedOutputStream;
    :cond_3
    :try_start_9
    const-string v8, "off"

    goto :goto_0

    .line 583
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 584
    if-eqz v5, :cond_5

    if-eqz v10, :cond_6

    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_5
    :goto_7
    if-eqz v1, :cond_2

    if-eqz v10, :cond_8

    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_6

    :catch_3
    move-exception v7

    .local v7, "x2":Ljava/lang/Throwable;
    :try_start_c
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_6

    .end local v7    # "x2":Ljava/lang/Throwable;
    :catch_4
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    :try_start_d
    invoke-virtual {v11, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "str":Ljava/io/BufferedOutputStream;
    .end local v7    # "x2":Ljava/lang/Throwable;
    :catchall_2
    move-exception v8

    goto :goto_4

    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "str":Ljava/io/BufferedOutputStream;
    :cond_6
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_7

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_5
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_3

    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_6

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "str":Ljava/io/BufferedOutputStream;
    :catch_6
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_5

    .restart local v5    # "str":Ljava/io/BufferedOutputStream;
    :catchall_3
    move-exception v8

    move-object v9, v10

    goto :goto_2
.end method


# virtual methods
.method getResumeStartRecord()Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mTempRecord:Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    return-object v0
.end method

.method public getStartIntentInfo(Landroid/content/Intent;)Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 184
    const-string v3, "nubia_locked_startinfo_id"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 185
    .local v0, "id":I
    iget-object v3, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    .line 186
    .local v2, "r":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    const/4 v1, 0x0

    .line 187
    .local v1, "info":Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;
    if-eqz v2, :cond_0

    .line 188
    iget-object v1, v2, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

    .line 190
    :cond_0
    sget-boolean v3, Lcom/android/server/am/AppLockerConfig;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 191
    const-string v3, "AppLocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStartIntentInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_1

    const-string v2, "null"

    .end local v2    # "r":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_2
    return-object v1
.end method

.method isLockActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 96
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityLockHelper;->isLockedPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isLockActivity(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityLockHelper;->isLockedPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isLockedOn()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedOn:Z

    return v0
.end method

.method isPkgNeedLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method isRestartIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 176
    :try_start_0
    const-string v2, "nubia_locked_restartIntent"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 180
    .local v1, "isRestart":Z
    :goto_0
    return v1

    .line 177
    .end local v1    # "isRestart":Z
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1    # "isRestart":Z
    goto :goto_0
.end method

.method needDestroy(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 6
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 365
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v1, v3

    .line 381
    :cond_1
    :goto_0
    return v1

    .line 367
    :cond_2
    const/4 v1, 0x0

    .line 368
    .local v1, "need":Z
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityLockHelper;->isUnlockAppActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 369
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v5, "nubia_locked_start_id"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 370
    .local v0, "id":I
    iget-object v4, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    .line 371
    .local v2, "r":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    if-eqz v2, :cond_1

    iget-boolean v4, v2, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyWithStart:Z

    if-nez v4, :cond_1

    .line 372
    iget-object v4, v2, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mAttachActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v4, v5, :cond_3

    move v1, v3

    .line 373
    goto :goto_0

    .line 375
    :cond_3
    iget-object v4, v2, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mAttachActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, v4, :cond_4

    move v1, v3

    .line 376
    :goto_1
    if-eqz v1, :cond_1

    .line 377
    iget-object v3, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, v2, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 375
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method notifyUnLockApp(IZ)Z
    .locals 7
    .param p1, "id"    # I
    .param p2, "success"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 202
    sget-boolean v2, Lcom/android/server/am/AppLockerConfig;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 203
    const-string v2, "AppLocker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyUnLockApp:id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",success="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 206
    .local v0, "callUid":I
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityLockHelper;->isUidPermited(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 219
    :goto_0
    return v4

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    .line 209
    .local v1, "r":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    const-string v5, "AppLocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyUnLockApp:r="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v1, :cond_4

    const-string v2, "null"

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-eqz v1, :cond_3

    .line 211
    iget-object v5, p0, Lcom/android/server/am/ActivityLockHelper;->mLockedStatus:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, v1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mPackageName:Ljava/lang/String;

    if-nez p2, :cond_5

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-boolean v2, v1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyWithStart:Z

    if-eqz v2, :cond_3

    .line 213
    if-eqz p2, :cond_2

    .line 214
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityLockHelper;->restartLockedActivity(Lcom/android/server/am/ActivityLockHelper$VerifyRecord;)V

    .line 216
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v4, v3

    .line 219
    goto :goto_0

    :cond_4
    move-object v2, v1

    .line 209
    goto :goto_1

    :cond_5
    move v2, v4

    .line 211
    goto :goto_2
.end method

.method onTopActivityResume(Lcom/android/server/am/ActivityRecord;)I
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityLockHelper;->isLockActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
    sget-boolean v1, Lcom/android/server/am/AppLockerConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 281
    const-string v1, "AppLocker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "there is not locked,PackageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    :goto_0
    return v2

    .line 286
    :cond_1
    const/4 v8, 0x0

    .line 287
    .local v8, "result":I
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityLockHelper;->isPkgNeedLocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 288
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityLockHelper;->getVerifyRecord(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    move-result-object v7

    .line 289
    .local v7, "record":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    sget-boolean v1, Lcom/android/server/am/AppLockerConfig;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 290
    const-string v3, "AppLocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkg need lock,PackageName="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " VerifyRecord="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v7, :cond_4

    const-string v1, "null"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_2
    if-nez v7, :cond_5

    .line 295
    new-instance v0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->makeId()I

    move-result v3

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;-><init>(Lcom/android/server/am/ActivityLockHelper;ZILjava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;)V

    .line 297
    .local v0, "verifyRecord":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, v0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iput-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mTempRecord:Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    .line 299
    const/4 v8, 0x1

    .line 300
    sget-boolean v1, Lcom/android/server/am/AppLockerConfig;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 301
    const-string v1, "AppLocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTopResume:mRecords="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "verifyRecord":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    :cond_3
    :goto_2
    move v2, v8

    .line 335
    goto/16 :goto_0

    :cond_4
    move-object v1, v7

    .line 290
    goto :goto_1

    .line 305
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v7, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-boolean v1, p0, Lcom/android/server/am/ActivityLockHelper;->mCallFromMoveToTaskFront:Z

    if-eqz v1, :cond_7

    .line 307
    new-instance v0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->makeId()I

    move-result v3

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;-><init>(Lcom/android/server/am/ActivityLockHelper;ZILjava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;)V

    .line 309
    .restart local v0    # "verifyRecord":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, v0, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iput-object v0, p0, Lcom/android/server/am/ActivityLockHelper;->mTempRecord:Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    .line 311
    const/4 v8, 0x1

    .line 312
    sget-boolean v1, Lcom/android/server/am/AppLockerConfig;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 313
    const-string v1, "AppLocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTopResume:mRecords="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v0    # "verifyRecord":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    :cond_6
    :goto_3
    sget-boolean v1, Lcom/android/server/am/AppLockerConfig;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 320
    const-string v1, "AppLocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCallFromMoveToTaskFront="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/am/ActivityLockHelper;->mCallFromMoveToTaskFront:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 317
    :cond_7
    const/4 v8, 0x2

    goto :goto_3

    .line 325
    .end local v7    # "record":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityLockHelper;->getVerifyRecord(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    move-result-object v7

    .line 326
    .restart local v7    # "record":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    if-eqz v7, :cond_9

    .line 327
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, v7, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_9
    sget-boolean v1, Lcom/android/server/am/AppLockerConfig;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 330
    const-string v2, "AppLocker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkg already unlocked,VerifyRecord="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v7, :cond_a

    const-string v1, "null"

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    move-object v1, v7

    goto :goto_4
.end method

.method redirectLockedActivityStart(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 22
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p13, "outResult"    # Landroid/app/IActivityManager$WaitResult;
    .param p14, "config"    # Landroid/content/res/Configuration;
    .param p15, "options"    # Landroid/os/Bundle;
    .param p16, "userId"    # I
    .param p17, "iContainer"    # Landroid/app/IActivityContainer;
    .param p18, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p19, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 230
    new-instance v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    invoke-direct/range {v1 .. v19}, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;-><init>(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)V

    .line 235
    .local v1, "restartInfo":Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;
    new-instance v2, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    const/4 v4, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityLockHelper;->makeId()I

    move-result v5

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p19

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;-><init>(Lcom/android/server/am/ActivityLockHelper;ZILjava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;)V

    .line 237
    .local v2, "r":Lcom/android/server/am/ActivityLockHelper$VerifyRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 238
    .local v21, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/ActivityLockHelper$VerifyRecord;>;>;"
    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 240
    .local v20, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/ActivityLockHelper$VerifyRecord;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 244
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/ActivityLockHelper$VerifyRecord;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, v2, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-boolean v3, Lcom/android/server/am/AppLockerConfig;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 247
    const-string v3, "AppLocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "redirectLockedActivityStart:VerifyRecord="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_2
    sget-boolean v3, Lcom/android/server/am/AppLockerConfig;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 251
    const-string v3, "AppLocker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "redirectLockedActivityStart:mRecords="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityLockHelper;->mRecords:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityLockHelper;->startUnlockAppActivity(Lcom/android/server/am/ActivityLockHelper$VerifyRecord;)V

    .line 255
    return-void
.end method

.method register()V
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->registerReceiver()V

    .line 132
    invoke-direct {p0}, Lcom/android/server/am/ActivityLockHelper;->registerObserver()V

    .line 133
    const-string v0, "cn.nubia.applockmanager"

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityLockHelper;->addPermitApp(Ljava/lang/String;)V

    .line 134
    const-string v0, "AppLocker"

    const-string v1, "register success."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method restartLockedActivity(Lcom/android/server/am/ActivityLockHelper$VerifyRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    .prologue
    .line 259
    sget-boolean v1, Lcom/android/server/am/AppLockerConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 260
    const-string v1, "AppLocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restartLockedActivity:VerifyRecord="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

    if-eqz v1, :cond_1

    .line 264
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 265
    .local v0, "restartIntent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mStartIntentInfo:Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;

    iget-object v1, v1, Lcom/android/server/am/ActivityLockHelper$StartIntentInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 267
    const-string v1, "nubia_locked_restartIntent"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    const-string v1, "nubia_locked_startinfo_id"

    iget v2, p1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 270
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 272
    .end local v0    # "restartIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public setCallFromMoveToTaskFront(Z)V
    .locals 0
    .param p1, "callFromMoveToTaskFront"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/server/am/ActivityLockHelper;->mCallFromMoveToTaskFront:Z

    .line 112
    return-void
.end method

.method startUnlockAppActivity(Lcom/android/server/am/ActivityLockHelper$VerifyRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    .prologue
    .line 352
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 353
    .local v0, "passIntent":Landroid/content/Intent;
    const-string v1, "nubia_locked_start_id"

    iget v2, p1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mVerifyId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 354
    const-string v1, "nubia_locked_package_name"

    iget-object v2, p1, Lcom/android/server/am/ActivityLockHelper$VerifyRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v1, "cn.nubia.applockmanager.nubia_application_applock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 357
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 358
    iget-object v1, p0, Lcom/android/server/am/ActivityLockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 359
    sget-boolean v1, Lcom/android/server/am/AppLockerConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 360
    const-string v1, "AppLocker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startUnlockAppActivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    return-void
.end method
