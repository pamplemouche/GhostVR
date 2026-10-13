.class public final synthetic LTE0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LjF0;

.field public final x:Ljava/lang/String;


# direct methods
.method public constructor <init>(LjF0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LTE0;->w:LjF0;

    iput-object p2, p0, LTE0;->x:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LTE0;->w:LjF0;

    iget-object v1, p0, LTE0;->x:Ljava/lang/String;

    const/4 v2, 0x1

    .line 1
    iput-boolean v2, v0, LjF0;->y0:Z

    .line 2
    iput-object v1, v0, LjF0;->z0:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, LjF0;->T()V

    return-void
.end method
