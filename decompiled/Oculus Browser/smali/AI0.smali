.class public final synthetic LAI0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LCI0;

.field public final x:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method public constructor <init>(LCI0;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LAI0;->w:LCI0;

    iput-object p2, p0, LAI0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LAI0;->w:LCI0;

    iget-object v1, p0, LAI0;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 1
    iget-object v0, v0, LCI0;->c:LDI0;

    .line 2
    iget-object v1, v1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v1, v0}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method
