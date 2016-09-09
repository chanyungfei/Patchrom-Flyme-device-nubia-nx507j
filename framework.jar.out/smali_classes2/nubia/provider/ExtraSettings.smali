.class public Lnubia/provider/ExtraSettings;
.super Ljava/lang/Object;
.source "ExtraSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/provider/ExtraSettings$Global;,
        Lnubia/provider/ExtraSettings$Secure;,
        Lnubia/provider/ExtraSettings$System;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "ExtraSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static convertForMediaPath(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 96
    invoke-static {p0}, Lnubia/provider/ExtraSettings;->needChangedForMediaUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p2, p1}, Lnubia/provider/ExtraSettings;->filePathToUri(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static convertForMediaUri(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 103
    invoke-static {p0}, Lnubia/provider/ExtraSettings;->needChangedForMediaUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {p2, p1}, Lnubia/provider/ExtraSettings;->uriToFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private static filePathToUri(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 67
    move-object v7, p1

    .line 68
    .local v7, "uri":Ljava/lang/String;
    if-eqz p1, :cond_2

    const-string v0, "/storage/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    const/4 v6, 0x0

    .line 71
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "_data = ?"

    .line 72
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 75
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 77
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 78
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 80
    if-eqz v7, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :cond_1
    if-eqz v6, :cond_2

    .line 85
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 92
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v7

    .line 82
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 84
    if-eqz v6, :cond_2

    .line 85
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 85
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static getAlbumName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 178
    const-string v0, ""

    .line 179
    .local v0, "albumName":Ljava/lang/String;
    const-string v1, "ringtone_default"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ringtone"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ringtone_2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ringtone_3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    :cond_0
    const-string v0, "ringtones"

    .line 190
    :cond_1
    :goto_0
    return-object v0

    .line 184
    :cond_2
    const-string v1, "notification_sound"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "message_sound"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 186
    :cond_3
    const-string v0, "notifications"

    goto :goto_0

    .line 187
    :cond_4
    const-string v1, "alarm_alert"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    const-string v0, "alarms"

    goto :goto_0
.end method

.method private static getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string v0, ""

    .line 162
    .local v0, "defaultName":Ljava/lang/String;
    const-string v1, "ringtone_default"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ringtone"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ringtone_2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ringtone_3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    :cond_0
    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_1
    :goto_0
    return-object v0

    .line 167
    :cond_2
    const-string v1, "notification_sound"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    const-string v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_3
    const-string v1, "alarm_alert"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 170
    const-string v1, "ro.config.alarm_alert"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_4
    const-string v1, "message_sound"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    const-string v1, "ro.config.message_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static ifNeededSetDefault(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 117
    if-eqz p2, :cond_2

    .line 118
    const/4 v6, 0x0

    .line 120
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 122
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    invoke-static {p0, p1, p2}, Lnubia/provider/ExtraSettings;->setDefault(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    .line 127
    :cond_1
    if-eqz v6, :cond_2

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 132
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object p2

    .line 125
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 127
    if-eqz v6, :cond_2

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static ifNotExistsSetDefault(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 110
    invoke-static {p0}, Lnubia/provider/ExtraSettings;->needChangedForMediaUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p0, p2, p1}, Lnubia/provider/ExtraSettings;->ifNeededSetDefault(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 113
    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private static needChangedForMediaUri(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string v0, "ringtone_default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ringtone_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ringtone_3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "notification_sound"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "alarm_alert"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "message_sound"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setDefault(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 136
    invoke-static {p0}, Lnubia/provider/ExtraSettings;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, "displayName":Ljava/lang/String;
    invoke-static {p0}, Lnubia/provider/ExtraSettings;->getAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "albumName":Ljava/lang/String;
    const-string v3, "_display_name = ? AND album = ?"

    .line 140
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object v8, v4, v1

    aput-object v6, v4, v2

    .line 141
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 143
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 145
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 147
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v10, v1

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    .line 152
    :cond_0
    if-eqz v7, :cond_1

    .line 153
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_1
    :goto_0
    invoke-static {p1, p0, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 157
    return-object p2

    .line 150
    :catch_0
    move-exception v0

    .line 152
    if-eqz v7, :cond_1

    .line 153
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 153
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static uriToFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 41
    move-object v7, p1

    .line 42
    .local v7, "str":Ljava/lang/String;
    if-eqz p1, :cond_2

    const-string v0, "content://media/external"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    const/4 v6, 0x0

    .line 45
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 47
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 49
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 50
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 51
    if-nez v7, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 55
    :cond_1
    if-eqz v6, :cond_2

    .line 56
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 63
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v7

    .line 53
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 55
    if-eqz v6, :cond_2

    .line 56
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 56
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
