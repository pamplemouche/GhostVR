.class public LOI0;
.super LlW;
.source "PG"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LYI0;


# direct methods
.method public constructor <init>(LYI0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LOI0;->b:LYI0;

    iput p2, p0, LOI0;->a:I

    invoke-direct {p0}, LlW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, LOI0;->b:LYI0;

    invoke-virtual {v0}, LYI0;->a()Ljava/io/File;

    move-result-object v0

    iget v1, p0, LOI0;->a:I

    invoke-static {v0, v1}, LtH0;->a(Ljava/io/File;I)LtH0;

    move-result-object v0

    return-object v0
.end method
