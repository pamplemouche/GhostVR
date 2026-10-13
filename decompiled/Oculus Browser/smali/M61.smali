.class public LM61;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LP61;


# direct methods
.method public constructor <init>(LP61;)V
    .locals 0

    .line 1
    iput-object p1, p0, LM61;->w:LP61;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LM61;->w:LP61;

    .line 2
    iget-object v0, v0, LP61;->w:Lj61;

    invoke-virtual {v0}, Lj61;->close()V

    return-void
.end method
