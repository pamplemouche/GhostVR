.class public final synthetic LRB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRB0;->w:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object p1, p0, LRB0;->w:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

    .line 1
    iget-object p2, p1, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->F0:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOB0;

    .line 2
    iget-boolean v3, v2, LOB0;->B:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2}, LOB0;->a()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p2

    const v0, 0x7f1303af

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v1}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p2

    .line 6
    iget-object p2, p2, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 8
    :goto_1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->O()V

    return-void
.end method
