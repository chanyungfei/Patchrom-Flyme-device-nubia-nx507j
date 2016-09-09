.class Lcom/android/server/display/WfdNotificationHandler;
.super Landroid/os/Handler;
.source "WfdNotificationHandler.java"


# static fields
.field private static final ACTION_DISCONNECT:Ljava/lang/String; = "android.server.display.wfd.DISCONNECT"

.field private static final MSG_UPDATE_NOTIFICATION:I = 0x3


# instance fields
.field private mActiveDisplay:Landroid/hardware/display/WifiDisplay;

.field private mActiveDisplayState:I

.field private mContext:Landroid/content/Context;

.field private mDisconnectPendingIntent:Landroid/app/PendingIntent;

.field private mIsResumed:Z

.field final mNotificationManager:Landroid/app/NotificationManager;

.field private mPendingNotificationUpdate:Z

.field private mSettingsPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 66
    iput-object p1, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 69
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 58
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/display/WfdNotificationHandler;->handleUpdateNotification()Z

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public handleUpdateNotification()Z
    .locals 12

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mPendingNotificationUpdate:Z

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    monitor-exit p0

    .line 190
    :goto_0
    return v0

    .line 96
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mPendingNotificationUpdate:Z

    .line 97
    iget v10, p0, Lcom/android/server/display/WfdNotificationHandler;->mActiveDisplayState:I

    .line 98
    .local v10, "state":I
    iget-object v7, p0, Lcom/android/server/display/WfdNotificationHandler;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 99
    .local v7, "display":Landroid/hardware/display/WifiDisplay;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const v3, 0x30c004a

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 105
    const/4 v0, 0x1

    if-eq v10, v0, :cond_1

    const/4 v0, 0x2

    if-ne v10, v0, :cond_4

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_2

    .line 110
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_DISPLAY_SETTINGS"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v2, "settingsIntent":Landroid/content/Intent;
    const/high16 v0, 0x14200000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 114
    iget-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    .line 118
    .end local v2    # "settingsIntent":Landroid/content/Intent;
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mDisconnectPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_3

    .line 119
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.server.display.wfd.DISCONNECT"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v6, "disconnectIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v0, v1, v6, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mDisconnectPendingIntent:Landroid/app/PendingIntent;

    .line 125
    .end local v6    # "disconnectIntent":Landroid/content/Intent;
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 127
    .local v9, "r":Landroid/content/res/Resources;
    const/4 v0, 0x1

    if-ne v10, v0, :cond_5

    .line 128
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x30c0046

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x30c0047

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v9, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WfdNotificationHandler;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x3020062

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080038

    const v3, 0x30c004a

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/WfdNotificationHandler;->mDisconnectPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "Running"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "B0"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 186
    .local v8, "notification":Landroid/app/Notification;
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const v3, 0x30c004a

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v8, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 190
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "r":Landroid/content/res/Resources;
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 99
    .end local v7    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v10    # "state":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 146
    .restart local v7    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v9    # "r":Landroid/content/res/Resources;
    .restart local v10    # "state":I
    :cond_5
    new-instance v11, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x3030036

    invoke-direct {v11, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 147
    .local v11, "views":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/display/WfdNotificationHandler;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x3020063

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "Running"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "B0"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 157
    .restart local v8    # "notification":Landroid/app/Notification;
    const v0, 0x30d0099

    iget-object v1, p0, Lcom/android/server/display/WfdNotificationHandler;->mDisconnectPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 158
    const v0, 0x30d0099

    iget-object v1, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    const v3, 0x30c004a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 160
    iget-boolean v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mIsResumed:Z

    if-eqz v0, :cond_6

    .line 161
    const v0, 0x30d0094

    const/16 v1, 0x8

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 163
    const v0, 0x30d0097

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 165
    const v0, 0x30d0097

    iget-object v1, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    const v3, 0x30c0048

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 168
    const v0, 0x30d0098

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 169
    const v0, 0x30d0098

    iget-object v1, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    const v3, 0x30c004d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 183
    :goto_2
    const v0, 0x30d0093

    const-string v1, "setBackgroundResource"

    const v3, 0x10804f2

    invoke-virtual {v11, v0, v1, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 173
    :cond_6
    const v0, 0x30d0094

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 174
    const v0, 0x30d0097

    const/16 v1, 0x8

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 176
    const v0, 0x30d0098

    const/16 v1, 0x8

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 178
    const v0, 0x30d0095

    iget-object v1, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    const v3, 0x30c004b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 180
    const v0, 0x30d0096

    iget-object v1, p0, Lcom/android/server/display/WfdNotificationHandler;->mContext:Landroid/content/Context;

    const v3, 0x30c004c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public scheduleResumeStateUpdateNotificationLocked(ZILandroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p1, "isResumed"    # Z
    .param p2, "state"    # I
    .param p3, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/display/WfdNotificationHandler;->mIsResumed:Z

    .line 74
    invoke-virtual {p0, p2, p3}, Lcom/android/server/display/WfdNotificationHandler;->scheduleUpdateNotificationLocked(ILandroid/hardware/display/WifiDisplay;)V

    .line 75
    return-void
.end method

.method public scheduleUpdateNotificationLocked(ILandroid/hardware/display/WifiDisplay;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 78
    iput p1, p0, Lcom/android/server/display/WfdNotificationHandler;->mActiveDisplayState:I

    .line 79
    iput-object p2, p0, Lcom/android/server/display/WfdNotificationHandler;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 80
    iget-boolean v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mPendingNotificationUpdate:Z

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WfdNotificationHandler;->mPendingNotificationUpdate:Z

    .line 82
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/display/WfdNotificationHandler;->sendEmptyMessage(I)Z

    .line 84
    :cond_0
    return-void
.end method
