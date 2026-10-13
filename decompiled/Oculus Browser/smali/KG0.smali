.class public LKG0;
.super Ls2;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public D0:Landroid/widget/EditText;

.field public E0:Landroid/widget/TextView;

.field public F0:Landroid/graphics/drawable/Drawable;

.field public G0:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LKG0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls2;-><init>()V

    return-void
.end method

.method public static synthetic a(LKG0;)V
    .locals 3

    .line 2
    iget-object v0, p0, LKG0;->D0:Landroid/widget/EditText;

    iget-object v1, p0, LKG0;->F0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, LKG0;->E0:Landroid/widget/TextView;

    const v1, 0x7f1305f1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4
    iget-object v0, p0, LKG0;->D0:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lz2;->D:Lz2;

    .line 6
    instance-of v2, v1, LJG0;

    if-eqz v2, :cond_0

    .line 7
    check-cast v1, LJG0;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    check-cast v1, LJG0;

    .line 9
    :goto_0
    invoke-interface {v1, v0}, LJG0;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, LKG0;->g(I)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, LKG0;->E0:Landroid/widget/TextView;

    const v1, 0x7f1305e1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 12
    iget-object v0, p0, LKG0;->E0:Landroid/widget/TextView;

    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ea

    .line 13
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object v0, p0, LKG0;->D0:Landroid/widget/EditText;

    iget-object p0, p0, LKG0;->G0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public L()V
    .locals 2

    .line 1
    iget-object v0, p0, LKG0;->D0:Landroid/widget/EditText;

    iget-object v1, p0, LKG0;->F0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lz2;->c0:Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [LWe1;

    .line 1
    new-instance v1, LWe1;

    new-instance v2, LHG0;

    invoke-direct {v2, p0, p2}, LHG0;-><init>(LKG0;Ljava/lang/String;)V

    const-string p2, "<learnmore>"

    const-string v3, "</learnmore>"

    invoke-direct {v1, p2, v3, v2}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p2, 0x0

    aput-object v1, v0, p2

    invoke-static {p1, v0}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object p1

    return-object p1
.end method

.method public final g(I)V
    .locals 2

    const-string v0, "Sync.PassphraseDialogDismissed"

    const/4 v1, 0x4

    .line 1
    invoke-static {v0, p1, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public h(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e01ae

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b036d

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-wide v3, v1, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 7
    invoke-static {v3, v4, v1}, LJ/N;->MWW_VhAo(JLjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->c()I

    move-result v3

    .line 10
    iget-wide v4, v1, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 11
    invoke-static {v4, v5, v1}, LJ/N;->MZ5PAkH1(JLjava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const v4, 0x7f13032c

    .line 12
    invoke-virtual {p0, v4}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    const/4 v6, 0x3

    if-eq v3, v6, :cond_0

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found incorrect passphrase type "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Falling back to default string."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const-string v6, "Sync_UI"

    invoke-static {v6, v3, v4}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 15
    iget-wide v6, v1, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 16
    invoke-static {v6, v7, v1}, LJ/N;->Mm0TRqKH(JLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {p0, v1, v4}, LKG0;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    goto :goto_1

    .line 19
    :cond_1
    invoke-static {v2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 20
    iget-wide v6, v1, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 21
    invoke-static {v6, v7, v1}, LJ/N;->MzdbY3ND(JLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {p0, v1, v4}, LKG0;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    new-instance v3, Landroid/text/SpannableString;

    invoke-static {v2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 25
    iget-wide v6, v1, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 26
    invoke-static {v6, v7, v1}, LJ/N;->M9pHrX0Y(JLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v3

    .line 28
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f0b0384

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 31
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    const v2, 0x7f1305e2

    .line 32
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [LWe1;

    new-instance v4, LWe1;

    new-instance v6, LIG0;

    invoke-direct {v6, p0, v1}, LIG0;-><init>(LKG0;Landroid/content/Context;)V

    const-string v1, "<resetlink>"

    const-string v7, "</resetlink>"

    invoke-direct {v4, v1, v7, v6}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v3, v5

    .line 33
    invoke-static {v2, v3}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 36
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0b04e7

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LKG0;->E0:Landroid/widget/TextView;

    const v0, 0x7f0b031b

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, LKG0;->D0:Landroid/widget/EditText;

    .line 39
    new-instance v1, LDG0;

    invoke-direct {v1, p0}, LDG0;-><init>(LKG0;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 40
    iget-object v0, p0, LKG0;->D0:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, LKG0;->F0:Landroid/graphics/drawable/Drawable;

    .line 41
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, LKG0;->G0:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ea

    .line 44
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 45
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 47
    new-instance v0, LO8;

    .line 48
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    const v2, 0x7f140245

    invoke-direct {v0, v1, v2}, LO8;-><init>(Landroid/content/Context;I)V

    .line 49
    iget-object v1, v0, LO8;->a:LK8;

    iput-object p1, v1, LK8;->u:Landroid/view/View;

    .line 50
    iput v5, v1, LK8;->t:I

    .line 51
    iput-boolean v5, v1, LK8;->v:Z

    const p1, 0x7f1305c0

    .line 52
    new-instance v1, LEG0;

    invoke-direct {v1, p0}, LEG0;-><init>(LKG0;)V

    .line 53
    invoke-virtual {v0, p1, v1}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const p1, 0x7f1301d4

    .line 54
    invoke-virtual {v0, p1, p0}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const p1, 0x7f130583

    .line 55
    invoke-virtual {v0, p1}, LO8;->b(I)LO8;

    .line 56
    invoke-virtual {v0}, LO8;->a()LP8;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lm9;->a()LS8;

    move-result-object v0

    check-cast v0, Lk9;

    .line 58
    iput-boolean v5, v0, Lk9;->N:Z

    .line 59
    new-instance v0, LGG0;

    invoke-direct {v0, p0, p1}, LGG0;-><init>(LKG0;LP8;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_2

    .line 1
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1305e1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, LKG0;->E0:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, LKG0;->g(I)V

    .line 5
    iget-object p1, p0, Lz2;->D:Lz2;

    .line 6
    instance-of p2, p1, LJG0;

    if-eqz p2, :cond_1

    .line 7
    check-cast p1, LJG0;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    check-cast p1, LJG0;

    .line 9
    :goto_1
    invoke-interface {p1}, LJG0;->j()V

    :cond_2
    return-void
.end method
