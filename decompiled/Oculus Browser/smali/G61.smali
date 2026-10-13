.class public LG61;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lx61;


# instance fields
.field public final w:Lx71;


# direct methods
.method public constructor <init>(Lx71;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LG61;->w:Lx71;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, LG61;->w:Lx71;

    invoke-interface {v0}, Lq71;->close()V

    return-void
.end method

.method public bridge synthetic y()Lq71;
    .locals 1

    .line 1
    invoke-virtual {p0}, LG61;->y()Lx71;

    move-result-object v0

    return-object v0
.end method

.method public y()Lx71;
    .locals 1

    .line 2
    iget-object v0, p0, LG61;->w:Lx71;

    invoke-interface {v0}, Lx71;->F()Lx71;

    move-result-object v0

    return-object v0
.end method
