.class public LHR0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LJR0;


# direct methods
.method public constructor <init>(LJR0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LHR0;->w:LJR0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LHR0;->w:LJR0;

    .line 2
    iget-object v0, v0, LJR0;->y:LCR0;

    .line 3
    invoke-interface {v0}, LCR0;->b()V

    return-void
.end method
