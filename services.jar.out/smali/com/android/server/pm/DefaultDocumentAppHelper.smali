.class public Lcom/android/server/pm/DefaultDocumentAppHelper;
.super Ljava/lang/Object;
.source "DefaultDocumentAppHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/DefaultDocumentAppHelper$DefaultDocumentObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_DOCUMENT:Ljava/lang/String; = "default_document"

.field private static final DOCUMENT_TYPE_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DefaultDocumentAppHelper"

.field private static final WECHAT_PACKAGE:Ljava/lang/String; = "com.tencent.mm"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultPkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/android/server/pm/DefaultDocumentAppHelper$1;

    invoke-direct {v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultDocumentAppHelper;->DOCUMENT_TYPE_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/pm/DefaultDocumentAppHelper;->mDefaultPkgName:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/android/server/pm/DefaultDocumentAppHelper;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Lcom/android/server/pm/DefaultDocumentAppHelper;->updateDefaultPackage()V

    .line 76
    new-instance v0, Lcom/android/server/pm/DefaultDocumentAppHelper$DefaultDocumentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/DefaultDocumentAppHelper$DefaultDocumentObserver;-><init>(Lcom/android/server/pm/DefaultDocumentAppHelper;Landroid/os/Handler;)V

    .line 77
    .local v0, "observer":Lcom/android/server/pm/DefaultDocumentAppHelper$DefaultDocumentObserver;
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultDocumentAppHelper$DefaultDocumentObserver;->observe()V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/DefaultDocumentAppHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/DefaultDocumentAppHelper;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/server/pm/DefaultDocumentAppHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/DefaultDocumentAppHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/DefaultDocumentAppHelper;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/server/pm/DefaultDocumentAppHelper;->updateDefaultPackage()V

    return-void
.end method

.method private final checkIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 128
    if-eqz p1, :cond_0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 132
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "mimeType":Ljava/lang/String;
    sget-object v2, Lcom/android/server/pm/DefaultDocumentAppHelper;->DOCUMENT_TYPE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private final isDefaultAppFrozen()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 100
    iget-object v5, p0, Lcom/android/server/pm/DefaultDocumentAppHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 101
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_1

    .line 102
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 103
    .local v2, "r":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/DefaultDocumentAppHelper;->mDefaultPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_0

    .line 109
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method private final isWeChatCalling()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 114
    .local v0, "callingUid":I
    const/4 v2, -0x1

    .line 116
    .local v2, "weChatUid":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/DefaultDocumentAppHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.tencent.mm"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 120
    if-ne v2, v0, :cond_0

    .line 121
    const/4 v3, 0x1

    .line 123
    :cond_0
    :goto_0
    return v3

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private updateDefaultPackage()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/pm/DefaultDocumentAppHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_document"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/DefaultDocumentAppHelper;->mDefaultPkgName:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/android/server/pm/DefaultDocumentAppHelper;->mDefaultPkgName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/pm/DefaultDocumentAppHelper;->mDefaultPkgName:Ljava/lang/String;

    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method public final checkDefaultDocument(Ljava/util/List;Landroid/content/Intent;I)Ljava/util/List;
    .locals 4
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/DefaultDocumentAppHelper;->mDefaultPkgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/DefaultDocumentAppHelper;->isWeChatCalling()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/pm/DefaultDocumentAppHelper;->checkIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object p1

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/DefaultDocumentAppHelper;->isDefaultAppFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 87
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/android/server/pm/DefaultDocumentAppHelper;->mDefaultPkgName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 92
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
