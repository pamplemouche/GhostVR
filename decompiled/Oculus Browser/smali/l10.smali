.class public final synthetic Ll10;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lq10;


# direct methods
.method public constructor <init>(Lq10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll10;->w:Lq10;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ll10;->w:Lq10;

    .line 1
    iget-object v1, v0, Lq10;->U:LBd1;

    iget-object v0, v0, Lq10;->x:Lle1;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, LBd1;->a(Lle1;I)V

    return-void
.end method
