.class Lcom/android/server/display/nubiaOverlayDisplayWindow$8;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/nubiaOverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPosCurrentX:F

.field private mPosCurrentY:F

.field private mPosStartX:F

.field private mPosStartY:F

.field final synthetic this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 1137
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->mPosCurrentX:F

    .line 1138
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->mPosCurrentY:F

    .line 1140
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 1142
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 1188
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1144
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mClickRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1600(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->mPosStartX:F

    .line 1146
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->mPosStartY:F

    .line 1147
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->ResetMovingHintAccordingToScreen()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 1148
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetMovingMask()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 1149
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->showMovingHint()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 1150
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1151
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1152
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1154
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v1

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->showHaloAnimation(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2800(Lcom/android/server/display/nubiaOverlayDisplayWindow;Landroid/view/View;)V

    .line 1155
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1156
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterRound:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2600(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1157
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1158
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->closeInputRect()V

    .line 1159
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->showMovingStartAnimation()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    goto :goto_0

    .line 1163
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->mPosCurrentX:F

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->mPosStartX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->mPosCurrentY:F

    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->mPosStartY:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->adjustScreenPosition(FF)V

    .line 1165
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->mPosCurrentX:F

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->mPosStartX:F

    .line 1166
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->mPosCurrentY:F

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->mPosStartY:F

    goto/16 :goto_0

    .line 1169
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mClickRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1600(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1170
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->mPosCurrentX:F

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->mPosStartX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->mPosCurrentY:F

    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->mPosStartY:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->adjustScreenPosition(FF)V

    .line 1172
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->mPosCurrentX:F

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->mPosStartX:F

    .line 1173
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->mPosCurrentY:F

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->mPosStartY:F

    .line 1174
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$4100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1175
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$4200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1176
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1177
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1178
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1180
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v1

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->hideHaloAnimation(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$4000(Lcom/android/server/display/nubiaOverlayDisplayWindow;Landroid/view/View;)V

    .line 1181
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1182
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterRound:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2600(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1183
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1184
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetInputRect()V

    goto/16 :goto_0

    .line 1142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
