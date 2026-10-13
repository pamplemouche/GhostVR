.class public final synthetic LBr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lxr;

.field public final x:LDr;


# direct methods
.method public constructor <init>(Lxr;LDr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LBr;->w:Lxr;

    iput-object p2, p0, LBr;->x:LDr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LBr;->w:Lxr;

    iget-object v1, p0, LBr;->x:LDr;

    iget v1, v1, LDr;->a:I

    invoke-virtual {v0, v1}, Lxr;->a(I)V

    return-void
.end method
