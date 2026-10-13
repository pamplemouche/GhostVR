.class Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;
.super Ljava/lang/Object;
.source "DeviceTab.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/DeviceTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InfoItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final category:Lcom/oculus/panelapp/debug/DeviceTab$Category;

.field public final label:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oculus/panelapp/debug/DeviceTab$Category;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;->category:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    .line 208
    iput-object p2, p0, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;->label:Ljava/lang/String;

    .line 209
    iput-object p3, p0, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;)I
    .locals 2
    .param p1    # Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 214
    iget-object v0, p0, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;->category:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    iget-object v1, p1, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;->category:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    if-ne v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;->label:Ljava/lang/String;

    iget-object p1, p1, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 218
    :cond_0
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/debug/DeviceTab$Category;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 201
    check-cast p1, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;->compareTo(Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;)I

    move-result p1

    return p1
.end method
