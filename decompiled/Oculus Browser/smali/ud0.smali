.class public final synthetic Lud0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LrU;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/ChromeActivity;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lud0;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lud0;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->q0()LtQ0;

    move-result-object v0

    return-object v0
.end method
