.class public Lc50;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Le50;


# direct methods
.method public constructor <init>(Le50;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc50;->w:Le50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc50;->w:Le50;

    iget-object v0, v0, Le50;->a:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->i:LX40;

    const/4 v1, 0x5

    .line 3
    invoke-virtual {v0, v1}, LX40;->c(I)V

    return-void
.end method
