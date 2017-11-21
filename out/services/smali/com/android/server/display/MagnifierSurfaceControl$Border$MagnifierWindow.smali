.class Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierSurfaceControl$Border;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierWindow"
.end annotation


# instance fields
.field private mChangeHeight:I

.field private mChangeWidth:I

.field private mCloseHeight:I

.field private mCloseWidth:I

.field private mHandleHeight:I

.field private mHandleWidth:I

.field private mPadHeight:I

.field private mPadWidth:I

.field private mTouchAreaHeight:I

.field private mTouchAreaWidth:I

.field final synthetic this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;


# direct methods
.method public constructor <init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;IIIIIII)V
    .locals 0
    .param p2, "mPadWidth"    # I
    .param p3, "mPadHeight"    # I
    .param p4, "mCloseWidth"    # I
    .param p5, "mHandleWidth"    # I
    .param p6, "mHandleHeight"    # I
    .param p7, "mTouchAreaWidth"    # I
    .param p8, "mTouchAreaHeight"    # I

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1155
    iput p2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mPadWidth:I

    .line 1156
    iput p3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mPadHeight:I

    .line 1157
    iput p4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mCloseWidth:I

    .line 1158
    iput p4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mCloseHeight:I

    .line 1159
    iput p4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mChangeWidth:I

    .line 1160
    iput p4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mChangeHeight:I

    .line 1161
    iput p5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mHandleWidth:I

    .line 1162
    iput p6, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mHandleHeight:I

    .line 1163
    iput p7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mTouchAreaWidth:I

    .line 1164
    iput p8, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mTouchAreaHeight:I

    .line 1165
    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;

    .prologue
    .line 1143
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mPadWidth:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;

    .prologue
    .line 1143
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mPadHeight:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;

    .prologue
    .line 1143
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mCloseWidth:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;

    .prologue
    .line 1143
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mCloseHeight:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;

    .prologue
    .line 1143
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mHandleWidth:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;

    .prologue
    .line 1143
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mHandleHeight:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;

    .prologue
    .line 1143
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mTouchAreaWidth:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;

    .prologue
    .line 1143
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mTouchAreaHeight:I

    return v0
.end method