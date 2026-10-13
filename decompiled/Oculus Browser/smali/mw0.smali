.class public final synthetic Lmw0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lpw0;


# direct methods
.method public constructor <init>(Lpw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmw0;->w:Lpw0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lmw0;->w:Lpw0;

    .line 1
    iget-object v1, v0, Lpw0;->x:Lle1;

    sget-object v2, Lqw0;->o:Lke1;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 2
    iget-object v1, v0, Lpw0;->x:Lle1;

    sget-object v2, Lqw0;->m:Lke1;

    const v3, 0x7f13049f

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4
    invoke-virtual {v1, v2, v3}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 5
    iget-object v1, v0, Lpw0;->x:Lle1;

    sget-object v2, Lqw0;->h:Lhe1;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lle1;->a(Lhe1;Z)V

    .line 6
    iget-object v1, v0, Lpw0;->x:Lle1;

    sget-object v2, Lqw0;->k:Lke1;

    const v3, 0x7f08013b

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 8
    invoke-virtual {v1, v2, v3}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 9
    iget-object v0, v0, Lpw0;->x:Lle1;

    sget-object v1, Lqw0;->l:Lke1;

    const v2, 0x7f060103

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, v2}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    return-void
.end method
