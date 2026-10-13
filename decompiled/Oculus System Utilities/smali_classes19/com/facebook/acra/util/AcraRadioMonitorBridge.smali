.class public Lcom/facebook/acra/util/AcraRadioMonitorBridge;
.super Ljava/lang/Object;
.source "AcraRadioMonitorBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;
    }
.end annotation


# static fields
.field private static volatile mListener:Lcom/facebook/acra/util/AcraRadioListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createOutputDecorator(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2
    .param p0, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 23
    sget-object v0, Lcom/facebook/acra/util/AcraRadioMonitorBridge;->mListener:Lcom/facebook/acra/util/AcraRadioListener;

    if-nez v0, :cond_0

    .end local p0    # "outputStream":Ljava/io/OutputStream;
    :goto_0
    return-object p0

    .restart local p0    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    new-instance v0, Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;

    sget-object v1, Lcom/facebook/acra/util/AcraRadioMonitorBridge;->mListener:Lcom/facebook/acra/util/AcraRadioListener;

    invoke-direct {v0, p0, v1}, Lcom/facebook/acra/util/AcraRadioMonitorBridge$OutputStreamDecorator;-><init>(Ljava/io/OutputStream;Lcom/facebook/acra/util/AcraRadioListener;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static setRadioListener(Lcom/facebook/acra/util/AcraRadioListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/facebook/acra/util/AcraRadioListener;

    .prologue
    .line 19
    sput-object p0, Lcom/facebook/acra/util/AcraRadioMonitorBridge;->mListener:Lcom/facebook/acra/util/AcraRadioListener;

    .line 20
    return-void
.end method
