.class public final synthetic Ltg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lxg0;

.field public final x:Z


# direct methods
.method public constructor <init>(Lxg0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltg0;->w:Lxg0;

    iput-boolean p2, p0, Ltg0;->x:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ltg0;->w:Lxg0;

    iget-boolean v1, p0, Ltg0;->x:Z

    .line 1
    iput-boolean v1, v0, Lxg0;->b:Z

    .line 2
    invoke-virtual {v0, v1}, Lxg0;->a(Z)V

    return-void
.end method
