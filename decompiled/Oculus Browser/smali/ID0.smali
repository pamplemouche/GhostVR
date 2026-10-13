.class public LID0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LE01;


# instance fields
.field public final synthetic a:LJD0;


# direct methods
.method public constructor <init>(LJD0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LID0;->a:LJD0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, LID0;->a:LJD0;

    iget-object v0, v0, LJD0;->w:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
