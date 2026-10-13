.class public Ls6;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Ljava/lang/Object;

.field public final synthetic x:Lt6;


# direct methods
.method public constructor <init>(Lt6;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls6;->x:Lt6;

    iput-object p2, p0, Ls6;->w:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls6;->x:Lt6;

    iget-object v0, v0, Lt6;->y:Lv6;

    iget-object v1, p0, Ls6;->w:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lv6;->a(Ljava/lang/Object;)V

    return-void
.end method
