.class public LLX0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LMX0;


# direct methods
.method public constructor <init>(LMX0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LLX0;->w:LMX0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LLX0;->w:LMX0;

    .line 2
    iget-object v0, v0, LMX0;->x:LCX0;

    .line 3
    invoke-interface {v0}, LCX0;->e()V

    return-void
.end method
