.class public final synthetic Lwd1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LBd1;


# direct methods
.method public constructor <init>(LBd1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwd1;->w:LBd1;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lwd1;->w:LBd1;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, LBd1;->a(I)V

    return-void
.end method
