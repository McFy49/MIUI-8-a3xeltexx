.class Landroid/app/GlobalActionsFrameLayoutSViewCover$1;
.super Ljava/lang/Object;
.source "GlobalActionsFrameLayoutSViewCover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/GlobalActionsFrameLayoutSViewCover;->hideAllView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/GlobalActionsFrameLayoutSViewCover;

.field final synthetic val$tempView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/GlobalActionsFrameLayoutSViewCover;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover$1;->this$0:Landroid/app/GlobalActionsFrameLayoutSViewCover;

    iput-object p2, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover$1;->val$tempView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover$1;->val$tempView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    return-void
.end method
