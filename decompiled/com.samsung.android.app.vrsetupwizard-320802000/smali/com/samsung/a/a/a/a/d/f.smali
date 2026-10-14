.class Lcom/samsung/a/a/a/a/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/samsung/a/a/a/a/d/b;

.field final synthetic b:Lcom/samsung/a/a/a/a/d/d;


# direct methods
.method constructor <init>(Lcom/samsung/a/a/a/a/d/d;Lcom/samsung/a/a/a/a/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/a/d/f;->b:Lcom/samsung/a/a/a/a/d/d;

    iput-object p2, p0, Lcom/samsung/a/a/a/a/d/f;->a:Lcom/samsung/a/a/a/a/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/d/f;->a:Lcom/samsung/a/a/a/a/d/b;

    invoke-interface {v0}, Lcom/samsung/a/a/a/a/d/b;->a()V

    iget-object v0, p0, Lcom/samsung/a/a/a/a/d/f;->a:Lcom/samsung/a/a/a/a/d/b;

    invoke-interface {v0}, Lcom/samsung/a/a/a/a/d/b;->b()I

    return-void
.end method
