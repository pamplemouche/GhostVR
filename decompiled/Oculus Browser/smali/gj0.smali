.class public Lgj0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Ljj0;


# direct methods
.method public constructor <init>(Ljj0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgj0;->w:Ljj0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lgj0;->w:Ljj0;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ls2;->g(Z)V

    return-void
.end method
