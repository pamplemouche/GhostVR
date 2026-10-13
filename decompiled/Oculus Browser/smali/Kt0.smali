.class public final synthetic LKt0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LMt0;

.field public final x:I


# direct methods
.method public constructor <init>(LMt0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKt0;->w:LMt0;

    iput p2, p0, LKt0;->x:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LKt0;->w:LMt0;

    iget v1, p0, LKt0;->x:I

    .line 1
    iget-object v2, v0, LMt0;->w:Lle1;

    sget-object v3, LNt0;->c:Lhe1;

    invoke-virtual {v0, v1}, LMt0;->a(I)Z

    move-result v0

    invoke-virtual {v2, v3, v0}, Lle1;->a(Lhe1;Z)V

    return-void
.end method
