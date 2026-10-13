.class public LhA0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic w:I

.field public final synthetic x:LjA0;


# direct methods
.method public constructor <init>(LjA0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LhA0;->x:LjA0;

    iput p2, p0, LhA0;->w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 1
    iget p1, p0, LhA0;->w:I

    const p2, 0x7f130547

    if-ne p1, p2, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "https://support.google.com/drive/answer/2424384"

    .line 3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4
    iget-object p2, p0, LhA0;->x:LjA0;

    .line 5
    iget-object p2, p2, LjA0;->g:LiA0;

    .line 6
    check-cast p2, LDA0;

    invoke-virtual {p2}, LDA0;->a()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object p2, p0, LhA0;->x:LjA0;

    .line 8
    iget-object p2, p2, LjA0;->g:LiA0;

    .line 9
    check-cast p2, LDA0;

    invoke-virtual {p2}, LDA0;->a()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const p2, 0x7f130623

    if-ne p1, p2, :cond_2

    .line 10
    iget-object p1, p0, LhA0;->x:LjA0;

    const/4 p2, 0x1

    .line 11
    iput p2, p1, LjA0;->a:I

    .line 12
    invoke-virtual {p1}, LjA0;->a()V

    goto :goto_0

    :cond_1
    const/4 p1, -0x2

    if-ne p2, p1, :cond_2

    .line 13
    iget-object p1, p0, LhA0;->x:LjA0;

    const/4 p2, 0x0

    .line 14
    iput p2, p1, LjA0;->a:I

    :cond_2
    :goto_0
    return-void
.end method
