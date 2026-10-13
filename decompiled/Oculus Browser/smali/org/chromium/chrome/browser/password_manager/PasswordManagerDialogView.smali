.class public Lorg/chromium/chrome/browser/password_manager/PasswordManagerDialogView;
.super Landroid/widget/ScrollView;
.source "PG"


# instance fields
.field public A:Landroid/widget/TextView;

.field public w:Lorg/chromium/ui/widget/ChromeImageButton;

.field public x:Lorg/chromium/ui/widget/ChromeImageButton;

.field public y:Landroid/widget/ImageView;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic a(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static final synthetic b(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    const v0, 0x7f0b0320

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/widget/ChromeImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/password_manager/PasswordManagerDialogView;->w:Lorg/chromium/ui/widget/ChromeImageButton;

    const v0, 0x7f0b0321

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/widget/ChromeImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/password_manager/PasswordManagerDialogView;->x:Lorg/chromium/ui/widget/ChromeImageButton;

    const v0, 0x7f0b0332

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/password_manager/PasswordManagerDialogView;->y:Landroid/widget/ImageView;

    const v0, 0x7f0b0333

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/password_manager/PasswordManagerDialogView;->z:Landroid/widget/TextView;

    const v0, 0x7f0b0331

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/password_manager/PasswordManagerDialogView;->A:Landroid/widget/TextView;

    return-void
.end method
