.class public abstract LiX0;
.super Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;
.source "PG"


# instance fields
.field public V:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public getAccessibilityServiceCapabilitiesMask()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->x:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public h()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->M:I

    .line 2
    iput v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->N:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->C:Z

    .line 4
    iput v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->E:I

    .line 5
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->A:J

    .line 6
    invoke-static {v0, v1, p0}, LJ/N;->MPyIoFYC(JLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iput-object v0, p0, LiX0;->V:Ljava/lang/String;

    return-void
.end method

.method public setAccessibilityNodeInfoKitKatAttributes(Landroid/view/accessibility/AccessibilityNodeInfo;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AccessibilityNodeInfo.chromeRole"

    .line 2
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p4, "AccessibilityNodeInfo.roleDescription"

    .line 3
    invoke-virtual {v0, p4, p5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p4, "AccessibilityNodeInfo.hint"

    .line 4
    invoke-virtual {v0, p4, p6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    if-eqz p9, :cond_0

    const-string p4, "AccessibilityNodeInfo.hasImage"

    const-string p5, "true"

    .line 5
    invoke-virtual {v0, p4, p5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, LiX0;->V:Ljava/lang/String;

    const-string p4, "ACTION_ARGUMENT_HTML_ELEMENT_STRING_VALUES"

    invoke-virtual {v0, p4, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p3, :cond_2

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 8
    invoke-virtual {p1, p7, p8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    .line 9
    :cond_2
    invoke-virtual {p1, p10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    return-void
.end method
