.class public interface abstract Lcom/android/internal/policy/impl/IPolicySmartShowFuncs;
.super Ljava/lang/Object;
.source "IPolicySmartShowFuncs.java"


# static fields
.field public static final WINDOW_TYPE_FLOAT:I = 0x3

.field public static final WINDOW_TYPE_NORMAL:I = 0x0

.field public static final WINDOW_TYPE_SPLIT:I = 0x2

.field public static final WINDOW_TYPE_SPLIT_UNDER_SB:I = 0x1


# virtual methods
.method public abstract canAffectSystemUiLw(Ljava/lang/Object;)Z
.end method

.method public abstract checkOffsetInputMethodTarget(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/view/WindowManagerPolicy$WindowState;
.end method

.method public abstract clearAllLastInputMethodWindowLw()V
.end method

.method public abstract dumpInputStates(Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public abstract getWindowType(Ljava/lang/Object;)I
.end method

.method public abstract initSpecialSize(IIIIIII)V
.end method

.method public abstract offsetInputMethodWindowLw(Ljava/lang/Object;II)V
.end method

.method public abstract updateInputMethodState(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
.end method
