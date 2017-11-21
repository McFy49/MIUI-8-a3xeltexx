.class Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;
.super Landroid/widget/FrameLayout;
.source "PopupCue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/writingbuddy/PopupCue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CueContainer"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHoverCue:Landroid/view/View;

.field private mTouchCue:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/writingbuddy/PopupCue;


# direct methods
.method public constructor <init>(Lcom/samsung/android/writingbuddy/PopupCue;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->this$0:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->initLayout()V

    return-void
.end method

.method private initLayout()V
    .locals 2

    .prologue
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->mTouchCue:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->mTouchCue:Landroid/view/View;

    const v1, 0x1080a83

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    const v1, 0x1080a82

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->mTouchCue:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->mTouchCue:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getHoverCueDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080a82

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->this$0:Lcom/samsung/android/writingbuddy/PopupCue;

    # setter for: Lcom/samsung/android/writingbuddy/PopupCue;->mIsAirButtonClicked:Z
    invoke-static {v0, v2}, Lcom/samsung/android/writingbuddy/PopupCue;->access$002(Lcom/samsung/android/writingbuddy/PopupCue;Z)Z

    :cond_0
    return v2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public switchCueButton(Z)V
    .locals 3
    .param p1, "isTouched"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->mTouchCue:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/PopupCue$CueContainer;->mTouchCue:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method