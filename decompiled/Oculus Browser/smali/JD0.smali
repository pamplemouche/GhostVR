.class public LJD0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, LJD0;->w:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, LD01;->a(I)LF01;

    move-result-object v0

    new-instance v1, LID0;

    invoke-direct {v1, p0}, LID0;-><init>(LJD0;)V

    .line 2
    invoke-interface {v0, v1}, LF01;->a(LE01;)V

    return-void
.end method
