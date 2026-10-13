.class public final synthetic LAY;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/ChromeActivity;

.field public final x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LAY;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    iput-object p2, p0, LAY;->x:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LAY;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    iget-object v1, p0, LAY;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->c(Ljava/lang/String;)V

    return-void
.end method
