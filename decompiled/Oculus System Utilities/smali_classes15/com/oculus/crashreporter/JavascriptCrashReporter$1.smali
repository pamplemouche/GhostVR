.class final Lcom/oculus/crashreporter/JavascriptCrashReporter$1;
.super Ljava/lang/Object;
.source "JavascriptCrashReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/crashreporter/JavascriptCrashReporter;->reportJSCrash(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$stackTrace:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oculus/crashreporter/JavascriptCrashReporter$1;->val$stackTrace:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/oculus/crashreporter/JavascriptCrashReporter$ReactNativeException;

    iget-object v1, p0, Lcom/oculus/crashreporter/JavascriptCrashReporter$1;->val$stackTrace:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/oculus/crashreporter/JavascriptCrashReporter$ReactNativeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
