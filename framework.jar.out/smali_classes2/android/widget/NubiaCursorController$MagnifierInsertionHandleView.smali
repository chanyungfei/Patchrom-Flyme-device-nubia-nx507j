.class Landroid/widget/NubiaCursorController$MagnifierInsertionHandleView;
.super Landroid/widget/NubiaCursorController$InsertionHandleView;
.source "NubiaCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NubiaCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MagnifierInsertionHandleView"
.end annotation


# instance fields
.field canHide:Z

.field final synthetic this$0:Landroid/widget/NubiaCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/NubiaCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "editor"    # Landroid/widget/Editor;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 838
    iput-object p1, p0, Landroid/widget/NubiaCursorController$MagnifierInsertionHandleView;->this$0:Landroid/widget/NubiaCursorController;

    .line 839
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/NubiaCursorController$InsertionHandleView;-><init>(Landroid/widget/NubiaCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V

    .line 840
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 843
    iget-boolean v0, p0, Landroid/widget/NubiaCursorController$MagnifierInsertionHandleView;->canHide:Z

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Landroid/widget/NubiaCursorController$MagnifierInsertionHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p0}, Landroid/widget/Editor;->removePositionListenerSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 850
    :goto_0
    return-void

    .line 847
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/NubiaCursorController$MagnifierInsertionHandleView;->canHide:Z

    .line 848
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$MagnifierInsertionHandleView;->dismiss()V

    .line 849
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/widget/NubiaCursorController$MagnifierInsertionHandleView;->hideAfterDelay(I)V

    goto :goto_0
.end method

.method protected needShowHandle()Z
    .locals 1

    .prologue
    .line 853
    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 857
    invoke-super {p0}, Landroid/widget/NubiaCursorController$InsertionHandleView;->show()V

    .line 858
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$MagnifierInsertionHandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/NubiaCursorController$MagnifierInsertionHandleView;->updatePositionXY(IZ)V

    .line 859
    return-void
.end method
