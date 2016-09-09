.class public interface abstract Landroid/content/ISmartShowContext;
.super Ljava/lang/Object;
.source "ISmartShowContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ISmartShowContext$OnOpsChangedListener;
    }
.end annotation


# static fields
.field public static final AMS_COMPONENET:Ljava/lang/String; = "AMS"

.field public static final DMS_COMPONENET:Ljava/lang/String; = "DMS"

.field public static final PMS_COMPONENET:Ljava/lang/String; = "PMS"

.field public static final POLICY_COMPONENET:Ljava/lang/String; = "POLICY"

.field public static final TYPE_CLONE_SECOND:I = 0x1

.field public static final TYPE_DUALINSTANCE_CONFIG_BACKUP:I = 0x1

.field public static final TYPE_DUALINSTANCE_CONFIG_RECOVERY:I = 0x2

.field public static final TYPE_SECOND_ACCOUNT:I = 0x8

.field public static final TYPE_SECOND_NOTIFICATION:I = 0x4

.field public static final TYPE_SECOND_SHARED:I = 0x2

.field public static final WMS_COMPONENET:Ljava/lang/String; = "WMS"


# virtual methods
.method public abstract allowIMEFullscreen()Z
.end method

.method public abstract doExtractSmartContent(Landroid/view/View;ILandroid/graphics/Rect;)V
.end method

.method public abstract extractDefaultSmartContent(Landroid/view/View;Landroid/graphics/Rect;)Landroid/content/ClipData;
.end method

.method public abstract getAllClonedDirectories()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllPkgNameOfEnabledDualInstance()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getService(Ljava/lang/String;)Landroid/os/IBinder;
.end method

.method public abstract getSmartShowFuncs(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getStackBounds()Landroid/graphics/Rect;
.end method

.method public abstract isDualInstanceEnabled(Ljava/lang/String;II)Z
.end method

.method public abstract isDualInstanceEnabled(Ljava/lang/String;I)[Z
.end method

.method public abstract markCloneIcon(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract markCloneIcon(Landroid/graphics/Bitmap;Landroid/content/Context;)V
.end method

.method public abstract markCloneLabel(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract performAdditionalProcessing(I)Z
.end method

.method public abstract saveConfig(Ljava/lang/String;IIZ)Z
.end method

.method public abstract setParameters(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setSmartContent(ILandroid/content/ClipData;)V
.end method

.method public abstract startWatchingConfig(Landroid/content/ISmartShowContext$OnOpsChangedListener;)V
.end method

.method public abstract stopWatchingConfig(Landroid/content/ISmartShowContext$OnOpsChangedListener;)V
.end method
