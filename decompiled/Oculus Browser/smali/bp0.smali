.class public Lbp0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Ljava/lang/String;

.field public final synthetic x:Lep0;


# direct methods
.method public constructor <init>(Lep0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbp0;->x:Lep0;

    iput-object p2, p0, Lbp0;->w:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbp0;->x:Lep0;

    iget-object v1, p0, Lbp0;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lep0;->b(Ljava/lang/String;)V

    return-void
.end method
