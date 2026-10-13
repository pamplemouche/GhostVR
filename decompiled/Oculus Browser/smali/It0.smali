.class public final synthetic LIt0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lne1;


# static fields
.field public static final a:Lne1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LIt0;

    invoke-direct {v0}, LIt0;-><init>()V

    sput-object v0, LIt0;->a:Lne1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lle1;

    check-cast p2, Landroid/view/View;

    check-cast p3, LUd1;

    .line 1
    check-cast p2, Lorg/chromium/chrome/browser/password_manager/PasswordManagerDialogView;

    .line 2
    sget-object v0, LNt0;->a:Lke1;

    const/4 v1, 0x0

    if-ne v0, p3, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    .line 4
    iget-object p3, p2, Lorg/chromium/chrome/browser/password_manager/PasswordManagerDialogView;->w:Lorg/chromium/ui/widget/ChromeImageButton;

    if-nez p3, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    new-instance v0, LOt0;

    invoke-direct {v0, p1}, LOt0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p3, p2, Lorg/chromium/chrome/browser/password_manager/PasswordManagerDialogView;->x:Lorg/chromium/ui/widget/ChromeImageButton;

    new-instance v0, LPt0;

    invoke-direct {v0, p1}, LPt0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p2, Lorg/chromium/chrome/browser/password_manager/PasswordManagerDialogView;->w:Lorg/chromium/ui/widget/ChromeImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 8
    :cond_1
    sget-object v0, LNt0;->b:Lje1;

    if-ne v0, p3, :cond_2

    .line 9
    invoke-virtual {p1, v0}, Lle1;->a(Lee1;)I

    move-result p1

    .line 10
    iget-object p2, p2, Lorg/chromium/chrome/browser/password_manager/PasswordManagerDialogView;->y:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 11
    :cond_2
    sget-object v0, LNt0;->c:Lhe1;

    if-ne v0, p3, :cond_7

    .line 12
    invoke-virtual {p1, v0}, Lle1;->a(Lce1;)Z

    move-result p3

    const/16 v0, 0x8

    if-eqz p3, :cond_3

    .line 13
    iget-object p3, p2, Lorg/chromium/chrome/browser/password_manager/PasswordManagerDialogView;->y:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object p3, p2, Lorg/chromium/chrome/browser/password_manager/PasswordManagerDialogView;->y:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    :goto_0
    sget-object p3, LNt0;->c:Lhe1;

    invoke-virtual {p1, p3}, Lle1;->a(Lce1;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 16
    iget-object p3, p2, Lorg/chromium/chrome/browser/password_manager/PasswordManagerDialogView;->w:Lorg/chromium/ui/widget/ChromeImageButton;

    if-nez p3, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    const/16 v2, 0x8

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 17
    :goto_1
    invoke-virtual {p3, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 18
    iget-object p2, p2, Lorg/chromium/chrome/browser/password_manager/PasswordManagerDialogView;->x:Lorg/chromium/ui/widget/ChromeImageButton;

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    :cond_6
    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 19
    :cond_7
    sget-object v0, LNt0;->d:Lke1;

    if-ne v0, p3, :cond_8

    .line 20
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 21
    iget-object p2, p2, Lorg/chromium/chrome/browser/password_manager/PasswordManagerDialogView;->z:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 22
    :cond_8
    sget-object v0, LNt0;->e:Lke1;

    if-ne v0, p3, :cond_9

    .line 23
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 24
    iget-object p2, p2, Lorg/chromium/chrome/browser/password_manager/PasswordManagerDialogView;->A:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_2
    return-void
.end method
