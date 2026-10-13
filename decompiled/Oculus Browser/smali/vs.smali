.class public final Lvs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lss;

.field public final synthetic x:I


# direct methods
.method public constructor <init>(Lss;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvs;->w:Lss;

    iput p2, p0, Lvs;->x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lvs;->w:Lss;

    .line 2
    iget-object v0, v0, Lss;->F:LAj;

    .line 3
    iget v1, p0, Lvs;->x:I

    invoke-virtual {v0, v1}, LAj;->b(I)V

    return-void
.end method
