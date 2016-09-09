.class public interface abstract Lcom/android/server/pm/IPmSmartShowFuncs;
.super Ljava/lang/Object;
.source "IPmSmartShowFuncs.java"


# virtual methods
.method public abstract checkResolveInfo(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;I)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract checkResolveInfoList(Landroid/content/Intent;Ljava/util/List;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
.end method

.method public abstract unrecoveredProcessLI(Ljava/io/File;Landroid/content/pm/PackageParser$Package;II)V
.end method
