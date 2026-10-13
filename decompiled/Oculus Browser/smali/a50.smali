.class public La50;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, La50;->w:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, La50;->w:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->a(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;)V

    return-void
.end method
