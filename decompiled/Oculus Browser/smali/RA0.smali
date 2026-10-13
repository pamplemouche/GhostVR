.class public LRA0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, LRA0;->w:Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_2

    .line 1
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v5, p0, LRA0;->w:Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;

    .line 7
    iget-object v5, v5, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->G0:Ljava/util/Map;

    .line 8
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 9
    iget-object v7, p0, LRA0;->w:Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;

    .line 10
    iget-object v7, v7, Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;->E0:Ljava/util/Map;

    .line 11
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 12
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 13
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-array v5, v0, [Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v5, "DeselectedDomains"

    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-static {v2}, LsT;->a(Ljava/util/List;)[I

    move-result-object v1

    const-string v2, "DeselectedDomainReasons"

    .line 19
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    new-array v0, v0, [Ljava/lang/String;

    .line 20
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v1, "IgnoredDomains"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-static {v4}, LsT;->a(Ljava/util/List;)[I

    move-result-object v0

    const-string v1, "IgnoredDomainReasons"

    .line 22
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 23
    iget-object v0, p0, LRA0;->w:Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;

    .line 24
    iget-object v1, v0, Lz2;->D:Lz2;

    .line 25
    iget v0, v0, Lz2;->F:I

    .line 26
    invoke-virtual {v1, v0, p1, p2}, Lz2;->a(IILandroid/content/Intent;)V

    goto :goto_1

    .line 27
    :cond_2
    iget-object p1, p0, LRA0;->w:Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;

    .line 28
    iget-object p2, p1, Lz2;->D:Lz2;

    .line 29
    iget v1, p1, Lz2;->F:I

    .line 30
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 31
    invoke-virtual {p2, v1, v0, p1}, Lz2;->a(IILandroid/content/Intent;)V

    :goto_1
    return-void
.end method
