.class abstract Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;
.super Ljava/lang/Object;
.source "QuickLaunchTab.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/QuickLaunchTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "QuickListItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;->mLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getLabel()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method abstract getLaunchString()Ljava/lang/String;
.end method
