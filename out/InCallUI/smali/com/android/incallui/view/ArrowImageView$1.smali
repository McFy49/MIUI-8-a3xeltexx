.class Lcom/android/incallui/view/ArrowImageView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ArrowImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/view/ArrowImageView;->playArrowRepeatTranslateAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isAnimationCancel:Z

.field final synthetic this$0:Lcom/android/incallui/view/ArrowImageView;


# direct methods
.method constructor <init>(Lcom/android/incallui/view/ArrowImageView;)V
    .locals 1

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/incallui/view/ArrowImageView$1;->this$0:Lcom/android/incallui/view/ArrowImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/view/ArrowImageView$1;->isAnimationCancel:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/view/ArrowImageView$1;->isAnimationCancel:Z

    .line 87
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/incallui/view/ArrowImageView$1;->this$0:Lcom/android/incallui/view/ArrowImageView;

    # getter for: Lcom/android/incallui/view/ArrowImageView;->translateFadeOut:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/incallui/view/ArrowImageView;->access$000(Lcom/android/incallui/view/ArrowImageView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/view/ArrowImageView$1;->isAnimationCancel:Z

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/incallui/view/ArrowImageView$1;->this$0:Lcom/android/incallui/view/ArrowImageView;

    # getter for: Lcom/android/incallui/view/ArrowImageView;->translateFadeOut:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/incallui/view/ArrowImageView;->access$000(Lcom/android/incallui/view/ArrowImageView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 94
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/android/incallui/view/ArrowImageView$1;->this$0:Lcom/android/incallui/view/ArrowImageView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/view/ArrowImageView;->setVisibility(I)V

    .line 81
    iput-boolean v1, p0, Lcom/android/incallui/view/ArrowImageView$1;->isAnimationCancel:Z

    .line 82
    return-void
.end method