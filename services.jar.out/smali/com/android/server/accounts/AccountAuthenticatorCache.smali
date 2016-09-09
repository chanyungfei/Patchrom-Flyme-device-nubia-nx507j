.class Lcom/android/server/accounts/AccountAuthenticatorCache;
.super Landroid/content/pm/RegisteredServicesCache;
.source "AccountAuthenticatorCache.java"

# interfaces
.implements Lcom/android/server/accounts/IAccountAuthenticatorCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountAuthenticatorCache$1;,
        Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/RegisteredServicesCache",
        "<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;",
        "Lcom/android/server/accounts/IAccountAuthenticatorCache;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Account"

.field private static final sSerializer:Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;-><init>(Lcom/android/server/accounts/AccountAuthenticatorCache$1;)V

    sput-object v0, Lcom/android/server/accounts/AccountAuthenticatorCache;->sSerializer:Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const-string v2, "android.accounts.AccountAuthenticator"

    const-string v3, "android.accounts.AccountAuthenticator"

    const-string v4, "account-authenticator"

    sget-object v5, Lcom/android/server/accounts/AccountAuthenticatorCache;->sSerializer:Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/RegisteredServicesCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getAllServices(I)Ljava/util/Collection;
    .locals 17
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-super/range {p0 .. p1}, Landroid/content/pm/RegisteredServicesCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v15

    .line 115
    .local v15, "origin":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountAuthenticatorCache;->mServicesLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 116
    const/4 v10, 0x0

    .local v10, "i":I
    :try_start_0
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v13

    .line 117
    .local v13, "len":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v14, "newServices":Ljava/util/List;
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    move v11, v10

    .end local v10    # "i":I
    .local v11, "i":I
    :goto_0
    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    .local v9, "authenticator":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    if-lt v11, v13, :cond_0

    .line 130
    .end local v9    # "authenticator":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :goto_1
    :try_start_2
    invoke-static {v14}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    monitor-exit v16

    return-object v2

    .line 120
    .restart local v9    # "authenticator":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_0
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    sget-boolean v2, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_PROCESS:Z

    if-nez v2, :cond_1

    invoke-static {}, Landroid/content/SmartShowContext;->getInstance()Landroid/content/ISmartShowContext;

    move-result-object v3

    iget-object v2, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/16 v4, 0x8

    move/from16 v0, p1

    invoke-interface {v3, v2, v0, v4}, Landroid/content/ISmartShowContext;->isDualInstanceEnabled(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    new-instance v1, Landroid/accounts/AuthenticatorDescription;

    iget-object v2, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    iget-object v4, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v4, Landroid/accounts/AuthenticatorDescription;

    iget v4, v4, Landroid/accounts/AuthenticatorDescription;->labelId:I

    iget-object v5, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/accounts/AuthenticatorDescription;

    iget v5, v5, Landroid/accounts/AuthenticatorDescription;->iconId:I

    iget-object v6, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v6, Landroid/accounts/AuthenticatorDescription;

    iget v6, v6, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    iget-object v7, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v7, Landroid/accounts/AuthenticatorDescription;

    iget v7, v7, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    iget-object v8, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v8, Landroid/accounts/AuthenticatorDescription;

    iget-boolean v8, v8, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    invoke-direct/range {v1 .. v8}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 126
    .local v1, "dup":Landroid/accounts/AuthenticatorDescription;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/accounts/AuthenticatorDescription;->duplicated:Z

    .line 127
    new-instance v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    iget-object v3, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    iget v4, v9, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-direct {v2, v1, v3, v4}, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;-><init>(Ljava/lang/Object;Landroid/content/ComponentName;I)V

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1    # "dup":Landroid/accounts/AuthenticatorDescription;
    :cond_1
    move v11, v10

    .line 129
    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_0

    .line 131
    .end local v9    # "authenticator":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v11    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "len":I
    .end local v14    # "newServices":Ljava/util/List;
    .restart local v10    # "i":I
    :catchall_0
    move-exception v2

    :goto_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v10    # "i":I
    .restart local v11    # "i":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "len":I
    .restart local v14    # "newServices":Ljava/util/List;
    :catchall_1
    move-exception v2

    move v10, v11

    .end local v11    # "i":I
    .restart local v10    # "i":I
    goto :goto_2

    .end local v10    # "i":I
    .restart local v11    # "i":I
    :cond_2
    move v10, v11

    .end local v11    # "i":I
    .restart local v10    # "i":I
    goto :goto_1
.end method

.method public getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .locals 10
    .param p1, "type"    # Landroid/accounts/AuthenticatorDescription;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AuthenticatorDescription;",
            "I)",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Landroid/content/pm/RegisteredServicesCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v8

    .line 97
    .local v8, "origin":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    sget-boolean v1, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_PROCESS:Z

    if-nez v1, :cond_0

    if-eqz v8, :cond_0

    iget-boolean v1, p1, Landroid/accounts/AuthenticatorDescription;->duplicated:Z

    if-eqz v1, :cond_0

    .line 98
    iget-object v9, p0, Lcom/android/server/accounts/AccountAuthenticatorCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 99
    :try_start_0
    invoke-static {}, Landroid/content/SmartShowContext;->getInstance()Landroid/content/ISmartShowContext;

    move-result-object v2

    iget-object v1, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-interface {v2, v1, p2, v3}, Landroid/content/ISmartShowContext;->isDualInstanceEnabled(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    new-instance v0, Landroid/accounts/AuthenticatorDescription;

    iget-object v1, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v2, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    iget-object v3, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    iget v3, v3, Landroid/accounts/AuthenticatorDescription;->labelId:I

    iget-object v4, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v4, Landroid/accounts/AuthenticatorDescription;

    iget v4, v4, Landroid/accounts/AuthenticatorDescription;->iconId:I

    iget-object v5, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/accounts/AuthenticatorDescription;

    iget v5, v5, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    iget-object v6, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v6, Landroid/accounts/AuthenticatorDescription;

    iget v6, v6, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    iget-object v7, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v7, Landroid/accounts/AuthenticatorDescription;

    iget-boolean v7, v7, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    invoke-direct/range {v0 .. v7}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 104
    .local v0, "dup":Landroid/accounts/AuthenticatorDescription;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/accounts/AuthenticatorDescription;->duplicated:Z

    .line 105
    new-instance v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    iget-object v2, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    iget v3, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-direct {v1, v0, v2, v3}, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;-><init>(Ljava/lang/Object;Landroid/content/ComponentName;I)V

    monitor-exit v9

    move-object v8, v1

    .line 109
    .end local v0    # "dup":Landroid/accounts/AuthenticatorDescription;
    .end local v8    # "origin":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_0
    :goto_0
    return-object v8

    .line 107
    .restart local v8    # "origin":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_1
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 54
    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    sget-object v0, Lcom/android/internal/R$styleable;->AccountAuthenticator:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 71
    .local v8, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "accountType":Ljava/lang/String;
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 75
    .local v3, "labelId":I
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 77
    .local v4, "iconId":I
    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 79
    .local v5, "smallIconId":I
    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 81
    .local v6, "prefId":I
    const/4 v0, 0x5

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 83
    .local v7, "customTokens":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 89
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    return-object v0

    .line 86
    :cond_0
    :try_start_1
    new-instance v0, Landroid/accounts/AuthenticatorDescription;

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .end local v1    # "accountType":Ljava/lang/String;
    .end local v3    # "labelId":I
    .end local v4    # "iconId":I
    .end local v5    # "smallIconId":I
    .end local v6    # "prefId":I
    .end local v7    # "customTokens":Z
    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public bridge synthetic parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/content/res/Resources;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountAuthenticatorCache;->parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    return-object v0
.end method
