.class public LdQ0;
.super Lh7;
.source "PG"


# instance fields
.field public final synthetic c:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, LdQ0;->c:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    invoke-direct {p0}, Lh7;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;LZ7;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lh7;->a(Landroid/view/View;LZ7;)V

    .line 2
    iget-object p1, p0, LdQ0;->c:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    .line 3
    iget-object v0, p1, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->w:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLabelFor(I)V

    .line 5
    :cond_0
    iget-object p1, p0, LdQ0;->c:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    .line 6
    iget-boolean p1, p1, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->C:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 7
    iget-object v0, p2, LZ7;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    .line 8
    iget-object p1, p0, LdQ0;->c:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    .line 9
    iget-object p1, p1, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->y:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 10
    iget-object p2, p2, LZ7;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
