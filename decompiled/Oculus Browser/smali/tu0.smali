.class public final synthetic Ltu0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final A:Lorg/chromium/base/Callback;

.field public final w:LBu0;

.field public final x:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

.field public final y:Z

.field public final z:Lnu0;


# direct methods
.method public constructor <init>(LBu0;Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;ZLnu0;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltu0;->w:LBu0;

    iput-object p2, p0, Ltu0;->x:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    iput-boolean p3, p0, Ltu0;->y:Z

    iput-object p4, p0, Ltu0;->z:Lnu0;

    iput-object p5, p0, Ltu0;->A:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Ltu0;->w:LBu0;

    iget-object v1, p0, Ltu0;->x:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    iget-boolean v2, p0, Ltu0;->y:Z

    iget-object v3, p0, Ltu0;->z:Lnu0;

    iget-object v4, p0, Ltu0;->A:Lorg/chromium/base/Callback;

    .line 1
    iget-object v5, v0, LBu0;->v:LTQ0;

    .line 2
    iget-object v5, v5, LTQ0;->s:Ljava/lang/CharSequence;

    .line 3
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4
    iput-object v5, v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->m:Ljava/lang/String;

    .line 5
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v5

    .line 6
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getIsLocal()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 7
    iget-boolean v2, v0, LBu0;->D:Z

    if-nez v2, :cond_3

    if-eqz v5, :cond_0

    .line 8
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 9
    iget-wide v8, v5, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 10
    invoke-static {v8, v9, v5, v1}, LJ/N;->MmUEbunT(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 11
    :cond_0
    throw v7

    .line 12
    :cond_1
    iget-object v6, v0, LBu0;->r:LTQ0;

    .line 13
    iget-object v6, v6, LTQ0;->s:Ljava/lang/CharSequence;

    .line 14
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    const-string v9, " "

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "-"

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 15
    iput-object v6, v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->g:Ljava/lang/String;

    .line 16
    iget-object v6, v0, LBu0;->s:LTQ0;

    .line 17
    iget-object v6, v6, LTQ0;->s:Ljava/lang/CharSequence;

    .line 18
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 19
    iput-object v6, v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->f:Ljava/lang/String;

    .line 20
    iget-object v6, v0, LBu0;->t:LTQ0;

    .line 21
    iget-object v6, v6, LTQ0;->s:Ljava/lang/CharSequence;

    .line 22
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 23
    iput-object v6, v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->i:Ljava/lang/String;

    .line 24
    iget-object v6, v0, LBu0;->u:LTQ0;

    .line 25
    iget-object v6, v6, LTQ0;->s:Ljava/lang/CharSequence;

    .line 26
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 27
    iput-object v6, v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->j:Ljava/lang/String;

    .line 28
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_6

    .line 29
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 30
    iget-wide v8, v5, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 31
    invoke-static {v8, v9, v5, v6}, LJ/N;->MHzz0BSK(JLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    .line 32
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getBasicCardIssuerNetwork()Ljava/lang/String;

    move-result-object v8

    .line 33
    iput-object v8, v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->k:Ljava/lang/String;

    .line 34
    iget-object v8, v6, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->h:Ljava/lang/String;

    .line 35
    iput-object v8, v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->h:Ljava/lang/String;

    .line 36
    iget v6, v6, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->l:I

    .line 37
    iput v6, v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->l:I

    if-nez v2, :cond_2

    .line 38
    iget-boolean v2, v0, LBu0;->D:Z

    if-nez v2, :cond_3

    invoke-virtual {v5, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)Ljava/lang/String;

    goto :goto_0

    .line 39
    :cond_2
    iget-object v2, v0, LBu0;->w:LTQ0;

    if-eqz v2, :cond_3

    .line 40
    sget-object v6, LyT;->a:Landroid/content/SharedPreferences;

    .line 41
    iget-object v2, v2, LTQ0;->s:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-interface {v6, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 42
    invoke-virtual {v5, v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)Ljava/lang/String;

    move-result-object v2

    .line 43
    iput-object v2, v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->b:Ljava/lang/String;

    .line 44
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getBasicCardIssuerNetwork()Ljava/lang/String;

    move-result-object v2

    .line 45
    iget-object v5, v0, LBu0;->j:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v2, "basic-card"

    .line 46
    :cond_4
    iget-object v0, v0, LBu0;->d:Ljava/util/List;

    .line 47
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getBillingAddressId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, LBu0;->a(Ljava/util/List;Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    move-result-object v0

    .line 48
    iput-object v1, v3, Lnu0;->K:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    .line 49
    iput-object v2, v3, Lnu0;->N:Ljava/lang/String;

    .line 50
    iput-object v0, v3, Lnu0;->M:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 51
    iget-object v0, v3, Lnu0;->I:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 52
    :cond_5
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getGUID()Ljava/lang/String;

    move-result-object v2

    .line 53
    iget-object v5, v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->h:Ljava/lang/String;

    .line 54
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getName()Ljava/lang/String;

    move-result-object v6

    .line 55
    iget v1, v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->l:I

    .line 56
    invoke-static {v0, v1}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 57
    invoke-virtual {v3, v2, v5, v6, v7}, LCQ0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iput-object v1, v3, LCQ0;->D:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {v3, v0}, Lnu0;->a(Landroid/content/Context;)V

    .line 60
    :goto_1
    invoke-interface {v4, v3}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void

    .line 61
    :cond_6
    throw v7
.end method
