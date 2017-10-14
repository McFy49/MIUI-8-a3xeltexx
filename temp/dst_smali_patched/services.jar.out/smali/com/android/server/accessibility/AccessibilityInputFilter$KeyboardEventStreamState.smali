.class Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;
.super Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyboardEventStreamState"
.end annotation


# instance fields
.field private mEventSequenceStartedMap:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;->mEventSequenceStartedMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;->reset()V

    return-void
.end method


# virtual methods
.method public deviceIdValid()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public final reset()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;->mEventSequenceStartedMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method public final shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .local v0, "deviceId":I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;->mEventSequenceStartedMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .local v1, "shouldProcess":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;->mEventSequenceStartedMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return v1

    .end local v1    # "shouldProcess":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "shouldProcess":Z
    goto :goto_0
.end method

.method public updateDeviceId(I)Z
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method
