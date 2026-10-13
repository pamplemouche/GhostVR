.class public LOd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LS7;


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:LPd;


# direct methods
.method public constructor <init>(LPd;)V
    .locals 0

    .line 1
    iput-object p1, p0, LOd;->c:LPd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, LOd;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, LOd;->a:Z

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, LOd;->a:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, LOd;->c:LPd;

    const/4 v0, 0x0

    iput-object v0, p1, LPd;->B:LR7;

    .line 3
    iget v0, p0, LOd;->b:I

    invoke-static {p1, v0}, LPd;->b(LPd;I)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, LOd;->c:LPd;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LPd;->a(LPd;I)V

    .line 2
    iput-boolean v0, p0, LOd;->a:Z

    return-void
.end method
