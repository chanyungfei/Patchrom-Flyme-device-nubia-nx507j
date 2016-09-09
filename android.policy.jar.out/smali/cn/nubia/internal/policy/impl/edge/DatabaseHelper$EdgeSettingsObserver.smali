.class Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$EdgeSettingsObserver;
.super Landroid/database/ContentObserver;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;


# direct methods
.method public constructor <init>(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 182
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$EdgeSettingsObserver;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    .line 183
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 184
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 187
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeIncomplete()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$EdgeSettingsObserver;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    # getter for: Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->access$500(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "nubia_edge_enable_czone"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 192
    :cond_0
    sget-object v0, Lcn/nubia/internal/policy/impl/edge/EdgeSettings;->ALL_INCOMPLETE_EDGE_SWITCH:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 193
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$EdgeSettingsObserver;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    # getter for: Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->access$500(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    # getter for: Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->EDGE_DATABASE_URI:Landroid/net/Uri;
    invoke-static {}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->access$600()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 200
    const-string v1, "settings"

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$EdgeSettingsObserver;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    # getter for: Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->access$500(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nubia_edge_enable_czone"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 202
    .local v0, "enableCZone":I
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$EdgeSettingsObserver;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    # getter for: Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mLastEdgeTpState:I
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->access$700(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$EdgeSettingsObserver;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    # getter for: Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mLastEdgeTpState:I
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->access$700(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$EdgeSettingsObserver;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    # invokes: Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->updateEdgeTpState()V
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->access$200(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)V

    .line 212
    .end local v0    # "enableCZone":I
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$EdgeSettingsObserver;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    # invokes: Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getValue(Landroid/net/Uri;)V
    invoke-static {v1, p2}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->access$800(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;Landroid/net/Uri;)V

    .line 208
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$EdgeSettingsObserver;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    # getter for: Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mChangeListener:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->access$300(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$EdgeSettingsObserver;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    # getter for: Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mChangeListener:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->access$300(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$EdgeSettingsObserver;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    # getter for: Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mSettingsMap:Ljava/util/Map;
    invoke-static {v2}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->access$400(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;->onChange(Landroid/net/Uri;Ljava/util/Map;)V

    .line 211
    :cond_2
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$EdgeSettingsObserver;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    # invokes: Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->updateEdgeTpState()V
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->access$200(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)V

    goto :goto_0
.end method
