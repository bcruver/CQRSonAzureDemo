﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Xunit.Extensions;
using Xunit;
using Ploeh.AutoFixture.Xunit;
using Ploeh.Samples.Booking.DomainModel;
using Ploeh.AutoFixture;

namespace Ploeh.Samples.Booking.DomainModel.UnitTest
{
    public class ReservationAcceptedEventFacts
    {
        [Theory, AutoDomainData]
        public void Test([Frozen]Guid id, ReservationAcceptedEvent sut)
        {
            Assert.Equal<Guid>(id, sut.Id);
        }

        [Theory, AutoDomainData]
        public void DateIsCorrect([Frozen]DateTime date, ReservationAcceptedEvent sut)
        {
            Assert.Equal<DateTime>(date, sut.Date);
        }

        [Theory, AutoDomainData]
        public void NameIsCorrect([Frozen]string name, ReservationAcceptedEvent sut)
        {
            Assert.Equal<string>(name, sut.Name);
        }

        [Theory, AutoDomainData]
        public void EmailIsCorrect([Frozen]string email, ReservationAcceptedEvent sut)
        {
            Assert.Equal<string>(email, sut.Email);
        }

        [Theory, AutoDomainData]
        public void QuantityIsCorrect([Frozen]int quantity, ReservationAcceptedEvent sut)
        {
            Assert.Equal<int>(quantity, sut.Quantity);
        }
    }
}
