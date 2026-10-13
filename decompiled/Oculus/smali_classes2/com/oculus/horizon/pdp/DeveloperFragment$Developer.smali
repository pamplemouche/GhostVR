.class public Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;
.super Ljava/lang/Object;
.source "DeveloperFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/pdp/DeveloperFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Developer"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final category:Ljava/lang/String;

.field public final genres:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final publisher:Ljava/lang/String;

.field public final releaseDate:Ljava/lang/String;

.field public final website:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer$1;

    invoke-direct {v0}, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->name:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->publisher:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->category:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->genres:Ljava/util/List;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->releaseDate:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->website:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->name:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->publisher:Ljava/lang/String;

    .line 119
    iput-object p3, p0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->category:Ljava/lang/String;

    .line 120
    iput-object p4, p0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->genres:Ljava/util/List;

    .line 121
    iput-object p5, p0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->releaseDate:Ljava/lang/String;

    .line 122
    iput-object p6, p0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->website:Ljava/lang/String;

    .line 123
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->publisher:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->genres:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 158
    iget-object v0, p0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->releaseDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/oculus/horizon/pdp/DeveloperFragment$Developer;->website:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return-void
.end method
