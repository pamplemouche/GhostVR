.class public final synthetic Ler0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lmr0;

.field public final x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmr0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ler0;->w:Lmr0;

    iput-object p2, p0, Ler0;->x:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Ler0;->w:Lmr0;

    iget-object v5, p0, Ler0;->x:Ljava/lang/String;

    .line 1
    iget-object v1, v0, Lmr0;->y:LOp0;

    check-cast v1, LMp0;

    .line 2
    iget-object v1, v1, LMp0;->a:LKp0;

    invoke-virtual {v1}, LNo0;->l()Z

    move-result v1

    xor-int/lit8 v7, v1, 0x1

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lmr0;->Q:Ljava/lang/Runnable;

    .line 4
    iget-object v1, v0, Lmr0;->H:LSJ0;

    invoke-interface {v1}, LSJ0;->h()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lmr0;->H:LSJ0;

    invoke-interface {v1}, LSJ0;->l()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "cr_Autocomplete"

    const-string v2, "onTextChangedForAutocomplete: no tab"

    .line 5
    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, v0, Lmr0;->H:LSJ0;

    invoke-interface {v1}, LSJ0;->c()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    .line 7
    iget-object v1, v0, Lmr0;->y:LOp0;

    check-cast v1, LMp0;

    .line 8
    iget-object v1, v1, LMp0;->a:LKp0;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 9
    iget-object v3, v0, Lmr0;->y:LOp0;

    .line 10
    check-cast v3, LMp0;

    .line 11
    iget-object v3, v3, LMp0;->a:LKp0;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 12
    iget-object v1, v0, Lmr0;->y:LOp0;

    check-cast v1, LMp0;

    .line 13
    iget-object v1, v1, LMp0;->a:LKp0;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    move v6, v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    const/4 v6, -0x1

    .line 14
    :goto_0
    iget-object v1, v0, Lmr0;->H:LSJ0;

    iget-object v3, v0, Lmr0;->x:Lbr0;

    .line 15
    invoke-interface {v3}, Lbr0;->r()Z

    move-result v3

    invoke-interface {v1, v3}, LSJ0;->b(Z)I

    move-result v4

    .line 16
    iget-object v1, v0, Lmr0;->K:Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;

    iget-object v0, v0, Lmr0;->H:LSJ0;

    invoke-interface {v0}, LSJ0;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;ILjava/lang/String;IZ)V

    :goto_1
    return-void
.end method
