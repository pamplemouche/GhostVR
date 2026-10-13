.class public LE3;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/os/Bundle;

.field public final b:[LM3;

.field public final c:[LM3;

.field public d:Z

.field public e:Z

.field public final f:I

.field public g:I

.field public h:Ljava/lang/CharSequence;

.field public i:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[LM3;[LM3;ZIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LE3;->e:Z

    .line 3
    iput p1, p0, LE3;->g:I

    .line 4
    invoke-static {p2}, LG3;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, LE3;->h:Ljava/lang/CharSequence;

    .line 5
    iput-object p3, p0, LE3;->i:Landroid/app/PendingIntent;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object p4, p0, LE3;->a:Landroid/os/Bundle;

    .line 7
    iput-object p5, p0, LE3;->b:[LM3;

    .line 8
    iput-object p6, p0, LE3;->c:[LM3;

    .line 9
    iput-boolean p7, p0, LE3;->d:Z

    .line 10
    iput p8, p0, LE3;->f:I

    .line 11
    iput-boolean p9, p0, LE3;->e:Z

    return-void
.end method
