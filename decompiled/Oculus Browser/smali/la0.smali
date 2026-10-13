.class public Lla0;
.super Lna0;
.source "PG"


# instance fields
.field public final c:Landroid/app/Activity;

.field public d:Landroid/app/Dialog;

.field public final e:Z

.field public f:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lna0;-><init>()V

    .line 2
    iput-object p1, p0, Lla0;->c:Landroid/app/Activity;

    .line 3
    iput-boolean p2, p0, Lla0;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)V
    .locals 2

    .line 1
    iget p1, p0, Lla0;->f:I

    if-eq p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lla0;->d:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lla0;->d:Landroid/app/Dialog;

    .line 5
    :cond_0
    iget-object p1, p0, Lla0;->d:Landroid/app/Dialog;

    if-nez p1, :cond_1

    .line 6
    sget-object p1, Ldm;->d:Ldm;

    .line 7
    iget-object v0, p0, Lla0;->c:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, p2, v1}, Ldm;->a(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lla0;->d:Landroid/app/Dialog;

    .line 8
    iput p2, p0, Lla0;->f:I

    .line 9
    new-instance p2, Lka0;

    invoke-direct {p2}, Lka0;-><init>()V

    .line 10
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 11
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 12
    :cond_1
    iget-object p1, p0, Lla0;->d:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 13
    iget-object p1, p0, Lla0;->d:Landroid/app/Dialog;

    iget-boolean p2, p0, Lla0;->e:Z

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 14
    iget-object p1, p0, Lla0;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 15
    sget-object p1, Lna0;->a:LUU;

    .line 16
    invoke-virtual {p1}, LUU;->c()V

    :cond_2
    return-void
.end method
