.class public LW71;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lorg/chromium/net/AndroidCellularSignalStrength;


# direct methods
.method public constructor <init>(Lorg/chromium/net/AndroidCellularSignalStrength;)V
    .locals 0

    .line 1
    iput-object p1, p0, LW71;->w:Lorg/chromium/net/AndroidCellularSignalStrength;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    new-instance v0, LX71;

    iget-object v1, p0, LW71;->w:Lorg/chromium/net/AndroidCellularSignalStrength;

    invoke-direct {v0, v1}, LX71;-><init>(Lorg/chromium/net/AndroidCellularSignalStrength;)V

    return-void
.end method
